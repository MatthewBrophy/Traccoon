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
     if user_params[:password] != user_params[:password_confirmation]
      redirect_to new_user_path
     else
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to new_session_path
     end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private 
  def user_params
    params.require(:user).permit(:name, :email, :neighborhood, :password, :password_confirmation)
  end
end
