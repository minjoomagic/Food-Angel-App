class IngredientsController < ApplicationController
  def new
    @ingredients = Ingredient.where(user_id: current_user.id)
    @ingredient = Ingredient.new
    @user = User.find(current_user.id)
    render :new
  end

  def create
    @ingredient = Ingredient.create(downcased_ingredient_params)
    if @ingredient.save
      flash[:notice] = "#{@ingredient.name} has been added to your fridge!"
    elsif flash[:error] = "#{@ingredient.name} is already in your fridge!"
    end
    redirect_to new_ingredient_path
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    # @ingredient = Ingredient.new
    @user = User.find(current_user.id)
    render :edit
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(downcased_ingredient_params)

    redirect_to users_path
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to users_path
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :user_id)
  end

  def downcased_ingredient_params
    ingredient_params.merge({name: ingredient_params['name'].downcase, user_id: ingredient_params['user_id']})
  end
end
