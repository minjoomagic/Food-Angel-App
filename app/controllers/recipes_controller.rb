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
    url = "http://www.recipepuppy.com/api/?i=#{split_array}&p=1"

    response = RestClient.get(url)
    results = JSON.parse(response.body)["results"]
    if results && results.length > 1
      @recipe_array = []
      results[0..5].map do |recipes|
      response = RestClient.get(recipes["href"])
        if response.code == 200
          @recipe_array << recipes
        end
      end
      @recipe_array
      render :index
    end
  end

  private
  def recipe_params
    params.permit(:href, :name, :user_id)
  end
end
