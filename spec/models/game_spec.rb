require 'rails_helper'

RSpec.describe Game, type: :model do

  describe "The is_obstructed method describes available moves for a chess piece" do
      it "Should return false if a chess piece is not blocking it" do
        @game = Game.new
        @game.chess_moves('A5', 'C4')
        assert @game.is_obstructed? == false
      end
      it "Should return true if a chess piece moves from F1 to D3" do
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
        @game.chess_moves('D4', 'B5')
        expect { @game.is_obstructed?}.to raise_error(ArgumentError)
        p @game.move_from, @game.move_to
      end
      it "Should return false if a chess piece attempts to move from A8 to A6 because there is a chess piece in the destination" do
        @game = Game.new
        @game.chess_moves('A8', 'A6')
        assert @game.is_obstructed? == false
      end
      it "Should return false if a chess piece moves from A8 to C8" do
        @game = Game.new
        @game.chess_moves('A8', 'C8')
        assert @game.is_obstructed? == false
      end
  end
end
