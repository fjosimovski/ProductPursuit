class UsersController < ApplicationController
  before_action :signed_in_user
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def destroy
    @user = User.find(params[:id])
  end  
end
