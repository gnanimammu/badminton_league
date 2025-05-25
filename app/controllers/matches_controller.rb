class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
    @players = Player.all
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to matches_path
    else
      render :new
    end
  end

  private
  def match_params
    params.require(:match).permit(:winner_id, :loser_id)
  end
end
