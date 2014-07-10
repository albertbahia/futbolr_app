class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
  end

  def create
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to player_path(@player)
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def player_params
    params.require(:player).permit(:name, :photo_url, :position, :goals_scored, :country, :rating)
  end

end
