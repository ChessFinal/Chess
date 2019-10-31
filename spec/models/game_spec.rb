require 'rails_helper'

RSpec.describe Game, type: :model do

 before :each do 
  @board = Board.new([ 
    [ "R", "H", "B", "K", "Q", "B", "H", "R", ], 
    [ "P", "P", "P", "P", "P", "P", "P", "P", ], 
    [ " ", " ", " ", " ", " ", " ", " ", " ", ], 
    [ " ", " ", " ", " ", " ", " ", " ", " ", ], 
    [ " ", " ", " ", " ", " ", " ", " ", " ", ], 
    [ " ", " ", " ", " ", " ", " ", " ", " ", ], 
    [ "P", "P", "P", "P", "P", "P", "P", "P", ], 
    [ "R", "H", "B", "K", "Q", "B", "H", "R", ], 
  ]);
 end

  #Unit Test - The Three A's
  #A - Arrange: Setup the conditions for your unit test
  #A - Act / Apply: Invoke the method that you trying
  #A - Assert: Test the result is what you expected
 it "should return 32 chess pieces" do
  # Arrange
  @board = Board.new

  # Act
  response = @game.chess_pieces.count

  # Assert
  assert response == 32
  end

  it "Should return King as the last piece" do
    #arrange
    @game = Game.new

    #act
    response = @game.chess_pieces.last.type #coordinates 4,0 and 4, 7 return King pieces

    #assert
    assert response = "King"
  end

  it "Should return the last x_position 4" do
  #arrange
    @game = Game.new

    #act
    response = @game.chess_pieces.last.x_position 

    #assert
    assert response = 4
  end

  it "Should return the last y_position 7" do
  #arrange
    @game = Game.new

    #act
    response = @game.chess_pieces.last.y_position 

    #assert
    assert response = 7
  end

end
  


