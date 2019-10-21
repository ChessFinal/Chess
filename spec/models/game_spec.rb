require 'rails_helper'

RSpec.describe Game, type: :model do
  
  describe "The is_obstructed method describes available moves for a chess piece" do
      it "The is_obstructed? method should return false if a chess piece is not blocking it" do
        @game = Game.new
        @game.chess_moves('A5', 'C4')
        assert @game.is_obstructed? == false
      end
      it "Should return true if a chess piece from F1 moves to D3" do
        @game = Game.new
        @game.chess_moves('F1', 'D3')
        assert @game.is_obstructed?
      end
      it "Should return false if a chess piece attempts to move from A6 to C4" do
        @game = Game.new
        @game.chess_moves('A6', 'C4')
        assert @game.is_obstructed? == false
      end
      it "Should raise an error if a chess piece attempts to move from D4 to B5" do
        @game = Game.new
        expect { @game.is_obstructed? }.to raise_error(ArgumentError)
        @game.chess_moves('D4', 'B5')
        p @game.move_from, @game.move_to
      end
  end
end
