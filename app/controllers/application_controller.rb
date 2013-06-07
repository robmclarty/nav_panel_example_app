class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def require_login
    unless current_user
      flash.now.alert = "You are not authorized to view this page!"
      render :template => 'sessions/new'
    end
  end

end
