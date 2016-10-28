class SessionsController < ApplicationController
  skip_before_action :require_login

  def new

  end

  def create
    user = User.create(name: params[:name])
    if user.valid?
      session[:user_id] = user.id
      session[:name] = user.name
      redirect_to user
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to new_session_path
  end

end
