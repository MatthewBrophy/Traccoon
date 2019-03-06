class UsersController < ApplicationController
  before_action :require_login
  
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
    @user = User.new(user_params)
    byebug
     if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to new_session_path
     else
      flash[:message] = "Passwords don't match"
      redirect_to new_user_path
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
    params.require(:user).permit(:name, :email, :neighborhood_id, :password, :password_confirmation)
  end
end
