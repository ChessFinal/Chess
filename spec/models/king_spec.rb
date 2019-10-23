require 'rails_helper'

RSpec.describe King, type: :model do
  describe "The valid moves for the King chess piece" do
    it "Should return true if the piece is moving 1 space up" do
      @game = Game.new
      @king = FactoryBot.create :king, x_coord: 5, y_coord: 5
      expect(king.valid_move?(5, 4)).to eq(true)
    end
  end
end
