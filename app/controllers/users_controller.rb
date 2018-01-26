class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

  end

  def edit
    @user = User.find(1)
  end

  def update

  end


  def destroy
    @user = User.find(1)
  end

end
