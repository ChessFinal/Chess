require 'rails_helper'

RSpec.describe Game, type: :model do

  describe "makeing the chess piece initialize" do
    it "has a nil value for is_obstructed" do
      p Pawn.new(1,0,"red",1)
      p ChessPiece.new(1,0,"red",1)
    end
  end


end