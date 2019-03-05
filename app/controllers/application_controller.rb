class ApplicationController < ActionController::Base
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) #this is setting a current user based on the session[user:id]
  end

  private 
  
  def require_login
    return head(:forbidden) unless session.include? :user_id #this is saying return a 404 unless the session includes that user:id
  end

end
