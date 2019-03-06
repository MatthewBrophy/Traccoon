class ApplicationController < ActionController::Base

  before_action :current_user
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) #this is setting a current user based on the session[user:id]
  end


  private 
  
  def require_login
    unless current_user != nil
      flash[:message] = "You must be logged in to access this section"
      redirect_to login_path
    end
  end

end
