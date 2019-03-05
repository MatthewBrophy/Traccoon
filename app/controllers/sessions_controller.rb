class SessionsController < ApplicationController

def new 
end 

def create
  @user = User.find_by(email: user_params[:email]) #find the user that matches the users email
  if @user && @user.authenticate(user_params[:password]) #if there is a user and the password matches
    session[:user_id] = @user.id #save the @user.id in session[:user_id]
    redirect_to welcome_path
  else  
    flash[:message] = "Invalid username or password"
    redirect_to new_session_path
  end
end
#if user 
  #session[:user_id] = @user.id
  #redirect_to welcome_path
#else
#flash[:message] = "invalid username or passwod" 
#redirect to sessions_new
#end 

def destroy
  session.delete :user_id #session.clear will delete all things in it ex:cart or whatever
  redirect_to new_session_path
end

private 
def user_params
  params.require(:user).permit(:email, :password)
end

end