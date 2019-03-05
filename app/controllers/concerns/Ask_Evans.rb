class IngredientsController < ApplicationController
  def new
    @ingredients = Ingredient.where(user_id: current_user.id)
    @ingredient = Ingredient.new
    render :new
  end

  def create
    byebug
    # @ingredient = Ingredient.create(ingredient_params)
    @ingredient = Ingredient.create(name: params[:ingredient][:name].up, user_id: params[:ingredient][:user_id])
    redirect_to new_ingredient_path
  end

  # private
  # def ingredient_params
  #   params.require(:ingredient).permit(:name, :user_id)
  # end
  #
  # def uppercased_ingredient_params
  #   ingredient_params.merge({name: ingredient_params['name'].upcase!})
  # end
end
