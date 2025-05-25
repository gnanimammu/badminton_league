class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to players_path
    else
      render :new
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path
  end

  def leaderboard
    @players = Player.all.sort_by { |p| -p.wins.count }
  end

  private
  def player_params
    params.require(:player).permit(:name)
  end
end