class ChessPiecesController < ApplicationController

  def show
    @piece = Piece.find(params[:id])
    @game = @piece.game
    @pieces = @game.pieces
  end



  private

  def piece_params
    params.permit(:id, :x_position, :y_position, :name, :unicode)
  end
end
