require 'rails_helper'

RSpec.describe Game, type: :model do

  describe "makeing the chess piece initialize" do
    it "has a nil value for is_obstructed" do
      p Bishop.new.is_obstructed?
    end
  end


end