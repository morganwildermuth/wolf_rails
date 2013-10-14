class UsersController < ApplicationController 
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].permit(:username, :password_confirmation, :password, :password_digest))
    if @user.save
      log_in @user
      redirect_to @user and return
    else
      render :new
    end
  end

  def show
    @wolf = Wolf.new
    @wolves = Wolf.all
    @user = User.find(params[:id])
  end
end