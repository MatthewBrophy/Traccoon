class ApplicationController < ActionController::Base
  
  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  private 
  
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
