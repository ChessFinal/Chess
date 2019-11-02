class ChessPiecesController < ApplicationController

  def show
    @piece = Piece.find(params[:id])
    @game = @piece.game
    @pieces = @game.pieces
  end



  private

  def piece_params
    params.permit(:id, :coordinateX, :coordinateY, :name, :unicode)
  end
end
