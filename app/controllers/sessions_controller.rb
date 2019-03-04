class SessionsController < ApplicationController

def new 
end 

def create
  @user = User.find_by(email: user_params[:email])
  return head(:forbidden) unless @user.authenticate(user_params[:password])
  session[:user_id] = @user.id
  redirect_to welcome_path
  #TODO: add a redirect to the logged in home page
end

def destroy
  session.delete :user_id
  redirect_to '/'
end

private 
def user_params
  params.require(:user).permit(:email, :password)
end

end