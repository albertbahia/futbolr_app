class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    # @player.team_id = session[:current_user]
    # @team = Team.find(session[:current_user])

    if @player.save
      # @team.players << @player
      redirect_to player_path(@player)
    else
      render :new
    end
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
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path
  end

  private
  def player_params
    params.require(:player).permit(:name, :photo_url, :position, :goals_scored, :country, :team_id, :rating)
  end

end
