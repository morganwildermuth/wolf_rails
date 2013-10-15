class WolvesController < ApplicationController 
  def new
    if signed_in?
      @wolf = Wolf.new
    else
      redirect_to new_session_path
    end
  end

  def create
    @wolf = Wolf.new(params[:wolf].permit(:name, :age, :gender, :health, :user_id))
    @wolf.user_id = current_user.id
    if @wolf.save
      redirect_to wolves_path
    else
      render :new
    end
  end

  def index
    if signed_in?
      @wolves = Wolf.where(user_id: current_user.id)
    else
      redirect_to new_session_path
    end
  end
end