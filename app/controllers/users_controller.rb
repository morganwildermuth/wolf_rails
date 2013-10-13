class UsersController < ApplicationController 
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].permit(:username, :password_confirmation, :password, :password_digest))
    if @user.save
      sign_in @user
      redirect_to @user and return
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
end