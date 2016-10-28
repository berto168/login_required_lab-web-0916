class SecretsController < ApplicationController

  def show
    if logged_in?
      secrets_path(params[:id])
    else
      redirect_to login_path
    end
  end


end
