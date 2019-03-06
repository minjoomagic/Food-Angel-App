class RecipesController < ApplicationController

  def index
    ingredients = Ingredient.where(user_id: current_user.id)
    recipe_array = []
    ingredients.each do |ing|
      recipe_array << ing.recipes
    end
    @final_array = recipe_array.flatten.uniq
  end

  def split_array
    items = params[:format].split('/')
    term = ""
    items.each do |element|
       term = term + "#{element},"
    end
    term
  end

  def api_request
    split_array
    url = "http://www.recipepuppy.com/api/?i=#{split_array}&p=1"

    response = RestClient.get(url)
    results = JSON.parse(response.body)["results"]
    if results && results.length > 1
      results.map do |recipes|
        byebug
      end
    end
        # title href ingredients thumbnail


    # if results && results.length > 1
    #   results.each_with_index do |hero, index|
    #     puts "\t#{index+1}. #{hero["biography"]["full-name"]}"
    #   end
    #   i = gets.to_i-1
    #   results[i]
    #
    # elsif results && results.length == 1
    #   results[0] #single result
    # else
    #   return nil #error path
    # end
  end
end
