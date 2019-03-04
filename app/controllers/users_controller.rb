class UsersController < ApplicationController
  
  def index
     @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
     
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to users_path
  end

  def edit
    
  end

  def update
    
  end

  private 
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
