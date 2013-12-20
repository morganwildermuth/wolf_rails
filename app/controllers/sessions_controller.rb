class SessionsController < ApplicationController

  def create
    @user = User.find_by_username(params[:sessions][:username])
    if @user && @user.authenticate(params[:sessions][:password])
      log_in(@user)
      redirect_to user_path(@user)
    else
      flash[:notice] = "Incorrect username and password combination."
      redirect_to new_session_path
    end
  end

  def destroy
    log_out
    redirect_to new_session_path
  end
end