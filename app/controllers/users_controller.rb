class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def sign_in_as # advanced homework
    sign_in(@user = User.find(params[:id]))
    redirect_to root_path, notice: "You are now signed in as #{@user}"
  end
end