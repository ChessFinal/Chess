require 'rails_helper'

RSpec.describe ChessPiece, type: :model do

  
  @game = ([
    [1, 0, 0, 1, 1, 1, 1, 1],
    [0, 0, 1, 1, 1, 1, 1, 1],
    [1, 1, 0, 0, 0, 0, 0, 1],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 1, 1, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [1, 1, 0, 0, 1, 1, 1, 1],
    [1, 1, 0, 1, 0, 1, 1, 1],
  ])
  


  describe "is_obstructed? describes available moves for a chess piece" do
    it "should return false if none of the chess pieces are blocking the moving chess piece" do
      @game = Game.new
      piece1 = @game.chess_pieces.find_by(x_position: 0, y_position: 0)
      piece2 = @game.chess_pieces.find_by(x_position: 2, y_position: 0)
      piece3 = @game.chess_pieces.find_by(x_position: 6, y_position: 7)
      piece4 = @game.chess_pieces.find_by(x_position: 6, y_position: 6)
      piece5 = @game.chess_pieces.find_by(x_position: 2, y_position: 4, type: "Pawn", colour: "white")

      assert piece1.is_obstructed?([3, 0]) == true
      assert piece2.is_obstructed?([2, 4]) == true
      assert piece1.is_obstructed?([0, 0]) == true
      assert piece3.is_obstructed?([3, 4]) == true
      assert piece4.is_obstructed?([3, 6]) == true
      assert piece4.is_obstructed?([6, 4]) == false
      assert piece5.is_obstructed?([6, 4]) == false
      assert piece5.is_obstructed?([0, 4]) == false
      assert_raise RuntimeError do
        piece1.is_obstructed?([1, 2])
      
      end
    end
  end
end


