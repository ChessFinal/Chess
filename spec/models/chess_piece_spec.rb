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
      
      piece1 = @game.chess_pieces.find_by(x_position: 2, y_position: 0)
      piece2 = @game.chess_pieces.find_by(x_position: 7, y_position: 5)
      piece3 = @game.chess_pieces.find_by(x_position: 7, y_position: 0)
      piece4 = @game.chess_pieces.find_by(x_position: 4, y_position: 3)
      piece5 = @game.chess_pieces.find_by(x_position: 0, y_position: 0)
      piece6 = @game.chess_pieces.find_by(x_position: 0, y_position: 0)

      assert piece1.is_obstructed?([4, 2]) == false
      assert piece2.is_obstructed?([5, 3]) == true
      assert piece3.is_obstructed?([4, 0]) == true
      assert piece4.is_obstructed?([3, 1]) == "ERROR - Invalid Move"
      assert piece5.is_obstructed?([2, 0]) == false
      assert piece6.is_obstructed?([0, 2]) == false

      end
    end
  end



