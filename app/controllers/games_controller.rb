class GamesController < ApplicationController
  before_action :authenticate_user!

  def show
    @game = Game.find(params[:id])
    
    @board = @game.board
  end

  def new
    @game = Game.new
    
  end

  def create
    @game = current_user.games.create(game_params)
    redirect_to game_path(@game)
  end


  private
  def game_params
    params.require(:game).permit(:name)
  end

end
