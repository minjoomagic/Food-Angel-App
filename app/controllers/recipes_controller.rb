class RecipesController < ApplicationController

  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
      if @recipe.save
        Favorite.create(recipe_id: @recipe.id, user_id: current_user.id)
      end
    redirect_to user_path(current_user.id)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @favorite = Favorite.find_by(recipe_id: @recipe.id)
    @favorite.destroy
    @recipe.destroy
    redirect_to user_path(current_user.id)
  end

  def split_array
    items = params[:format].split('/')
    term = ""
    items.each do |element|
       term = term + "#{element},"
    end
    term.split(' ').join('+')
  end

  def api_request
    split_array
    url = "http://www.recipepuppy.com/api/?i=#{split_array}"
    response = RestClient.get(url)
    results = JSON.parse(response.body)["results"]
    results = results.select do |recipe|
      recipe['href'] !~ /kraftfoods/
      recipe['href'] !~ /myrecipes/
      recipe['href'] !~ /allrecipes/
    end
    if results && results.length > 1
      @recipe_array = []
      results[0..9].map do |recipe|
        if valid_recipe recipe
          @recipe_array << recipe
        end
      end
      @recipe_array
      render :index
    end
  end

  def valid_recipe(recipe)
    begin
      recipe = RestClient.get(recipe['href'])
      return true
    rescue RestClient::Exception
      return false
    end
  end

  private
  def recipe_params
    params.permit(:name, :user_id, :href, :thumbnail)
  end
end
