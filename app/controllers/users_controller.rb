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
    @user = User.new(user_params)
     if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to welcome_path
     else
      flash[:message] = "Invalid Password. Please make sure password matches and is over 6 characters."
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

  def self.most_active_user 
    report_count = 0
    @users = User.all 
    @users.each do |user|
      if user.reports.count > report_count
        report_count = user.reports.count 
      else 
        report_count 
      end
    end
    

  end

  private 
  def user_params
    params.require(:user).permit(:name, :email, :neighborhood_id, :password, :password_confirmation)
  end
end
