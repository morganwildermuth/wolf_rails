class WolvesController < ApplicationController 
  def new
    if signed_in?
      redirect_to wolves_path if current_user.ready_to_play
      @wolf = Wolf.new
    else
      redirect_to new_session_path
    end
  end

  def create
    @wolf = Wolf.new(params[:wolf].permit(:name, :age, :gender, :health, :user_id))
    @wolf.user_id = current_user.id
    if @wolf.save
      user = current_user
      user.ready_to_play = true if current_user.wolves.length >= 2
      user.save(validate: false)
      render :js => "window.location = #{wolves_path.to_json}" if current_user.ready_to_play
    else
      render :new
    end
  end

  def index
    if signed_in?
      @wolves = Wolf.where(user_id: current_user.id)
      @game = Game.new
      @location = Location.new
      @current_game = current_user.game
    else
      redirect_to new_session_path
    end
  end
end