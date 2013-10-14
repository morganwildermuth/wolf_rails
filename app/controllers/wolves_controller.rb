class WolvesController < ApplicationController 
  def new
    @wolf = Wolf.new
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
    @wolves = Wolf.all
  end
end