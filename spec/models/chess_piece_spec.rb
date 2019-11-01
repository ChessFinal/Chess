require 'rails_helper'

RSpec.describe ChessPiece, type: :model do
  describe "A new chess piece can give its x and y coordinates" do
    it "Can initialize" do
      ChessPiece.new(0, 1)
    end
    it "Should return false if a chess piece is not blocking it" do
      @piece = ChessPiece.new(0, 1)
      #chess_position = @piece.to_s
      #assert chess_position == "A7"A
    end
  end
end
