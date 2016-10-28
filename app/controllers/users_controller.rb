class UsersController < ApplicationController
  before_action :require_login

  def index
    @user = User.all
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(name: params[:name])
    redirect_to @user
  end
end
