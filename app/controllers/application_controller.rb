class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  def logged_in?
    !!current_user
  end

  def current_user
    if session[:name]
      session[:name]
    end
  end

  private

  def require_login
    redirect_to new_session_path unless session.include? :name
  end
end
