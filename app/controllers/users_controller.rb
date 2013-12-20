class UsersController < ApplicationController 
  def new
    @user = User.new
    if signed_in?
      redirect_to current_user
    end
  end

  def create
    @user = User.new(params[:user].permit(:username, :password_confirmation, :password, :password_digest))
    if @user.save
      @user.game = Game.create
      @user.save(validate: false)
      log_in @user
      redirect_to @user and return
    else
      flash[:notice] = "Username already in use."
      render :new
    end
  end

  def show
    redirect_to new_wolf_path if !(current_user.ready_to_play)
    @user = User.find(params[:id])
  end
end