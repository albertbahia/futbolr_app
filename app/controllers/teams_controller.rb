class TeamsController < ApplicationController

  before_action :authenticate, only: [:new, :create]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.user_id = session[:current_user]

    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to team_path(@team)
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

  def search_results
    @fifa_players = FIFA.api_call(params[:club_id])
  end

  def add_new_player
    
    @player = Player.create({
      name: params[:name],
      photo_url: params[:photo_url],
      position: params[:position],
      goals_scored: params[:goals_scored],
      country: params[:country],
      team_id: 1,
      rating: params[:rating]
      })

      redirect_to players_path
  end


  private
    def authenticate
    if !session[:current_user]
      redirect_to login_path
    end
  end

  def team_params
    params.require(:team).permit(:name, :flag_url, :goals_scored, :formation)
  end

end
