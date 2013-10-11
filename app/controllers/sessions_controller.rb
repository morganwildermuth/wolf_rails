class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user.password == params[:session][:password]
      sign_in user
      redirect_to user
    else
      redirect_to 'new'
    end
  end

  def destroy
    sign_out 
    redirect_to 'new' 
  end
end