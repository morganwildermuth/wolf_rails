class UsersController < ApplicationController 
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].permit(:username, :password_confirmation, :password))
    if @user.save
      redirect_to user_path(@user.id) and return
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
end