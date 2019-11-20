require 'rails_helper'

RSpec.describe ChessPiece, type: :model do


  describe "is_obstructed? describes available moves for a chess piece" do
    it "should return false if none of the chess pieces are blocking the moving chess piece (p1)" do
      @game = Game.new
      @game.board = Board.new ([
          #set pieces as per diagram
      ])

      #arrange
      piece1 = @game.board.find_by(x_position: 0, y_position: 2)
      #act                                  #assert
      assert piece1.is_obstructed?([2, 4]) == false
    end

=begin
    it "should return false if none of the chess pieces are blocking the moving chess piece (p2)" do
      @game = Game.new
      #arrange
      piece2 = @game.chess_pieces.find_by(x_position: 5, y_position: 7)
      #act                                #assert
      assert piece2.is_obstructed?([3, 5]) == true
      end
    
      it "should return false if none of the chess pieces are blocking the moving chess piece (p3)" do
        @game = Game.new
        #arrange
        piece3 = @game.chess_pieces.find_by(x_position: 0, y_position: 7)
        #act                                #assert
        assert piece3.is_obstructed?([0, 4]) == true
        end
      
        it "should return false if none of the chess pieces are blocking the moving chess piece (p4)" do
          @game = Game.new
          #arrange
          piece4 = @game.chess_pieces.find_by(x_position: 3, y_position: 4)
           #act                                #assert
          assert piece4.is_obstructed?([1, 3])  == "ERROR - Invalid Move"
          end

          it "should return false if none of the chess pieces are blocking the moving chess piece (p5)" do
            @game = Game.new
            #arrange
            piece5 = @game.chess_pieces.find_by(x_position: 0, y_position: 0)
             #act                                #assert
            assert piece5.is_obstructed?([0, 2]) == false
            end

            it "should return false if none of the chess pieces are blocking the moving chess piece (p6)" do
              @game = Game.new
              #arrange
              piece6 = @game.chess_pieces.find_by(x_position: 0, y_position: 0)
               #act                                #assert
              assert piece6.is_obstructed?([2, 0]) == false
              end

=end
    end
  end