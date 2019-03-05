class IngredientsController < ApplicationController
  def new
    @ingredients = Ingredient.where(user_id: current_user.id)
    @ingredient = Ingredient.new
    @user = User.find(current_user.id)
    render :new
  end

  def create
    @ingredient = Ingredient.create(uppercased_ingredient_params)
    if @ingredient.save
      flash[:notice] = "#{@ingredient.name} has been added to your fridge!"
    elsif flash[:error] = @ingredient.errors.full_messages
    end
    redirect_to new_ingredient_path
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :user_id)
  end

  def uppercased_ingredient_params
    ingredient_params.merge({name: ingredient_params['name'].upcase!, user_id: ingredient_params['user_id']})
  end
end
