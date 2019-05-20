class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :custom_auth, only: :show

  def index
    @user = User.find(current_user.id)
    @ingredients = Ingredient.where(user_id: current_user.id)
    @ingredients_array = []
    @ingredients.each do |food|
      @ingredients_array << food.name
    end
  end
 
  def show
    @user = User.find(params[:id])
    @recipes = current_user.recipes
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if (@user.valid?)
      session[:user_id] = @user.id
      redirect_to users_path
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def custom_auth
    @user = User.find(params[:id])
    if current_user.id != @user.id
      flash[:notice] = "You can only view your page"
      redirect_to current_user
    end
  end
end
