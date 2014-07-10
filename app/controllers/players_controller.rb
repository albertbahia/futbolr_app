class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def player_params
    params.require(:team).permit(:name, :photo_url, :position, :goals_scored, :country, :rating)
  end

end
