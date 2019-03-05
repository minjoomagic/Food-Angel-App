class IngredientsController < ApplicationController
  def new
    @ingredients = Ingredient.where(user_id: current_user.id)
    @ingredient = Ingredient.new
    @user = User.find(current_user.id)
    render :new
  end

  def create
    @ingredient = Ingredient.create(name: params[:ingredient][:name].upcase, user_id: params[:ingredient][:user_id])
    if @ingredient.save
      flash[:notice] = "#{@ingredient.name} has been added to your fridge!"
    elsif flash[:error] = @ingredient.errors.full_messages
    end
    redirect_to new_ingredient_path
  end
end
