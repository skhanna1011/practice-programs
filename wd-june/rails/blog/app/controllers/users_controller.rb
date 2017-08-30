class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = user.new(user_params)
  end

  private

  def user_params
end
