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

  private
  def signed_in_user
    redirect_to new_user_session_path, alert: "Please sign in." unless signed_in?
  end
end
