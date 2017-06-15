class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
  	@current_user ||= Zombie.find_by(id: session[:zombie_id])
  end

  def logged_in?
  	current_user != nil
  end

  def require_login
  	redirect_to new_session_path if !current_user
  end
end
