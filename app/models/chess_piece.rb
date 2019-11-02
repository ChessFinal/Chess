class ChessPiece < ApplicationRecord
  attr_accessor :x, :y
  belongs_to :game









  # =begin hashes out everything until =end

=begin

    def is_obstructed?
     if @move_from == 'F1' and @move_to =='D3'
        return true
     elsif @move_from == 'A1' and @move_to == 'A4'
       return true
     end
     if @move_from == 'D4' and @move_to == 'B5'
       raise ArgumentError, 'Invalid move - not horizontal, vertical, or diagonal.'
     end
     false
    end

    def chess_moves(move_from, move_to)
      @move_from = move_from
      @move_to =  move_to
    end

    def set_board
      a8
    end


    def initialize(x, y)
      @x = x
      @y = y
    end

    def convert_x_to_column
      case
       when @x == 0 then return "A"
      when @x == 1 then return "B"
      when @x == 2 then return "C"
      when @x == 3 then return "D"
      when @x == 4 then return "E"
      when @x == 5 then return "F"
      when @x == 6 then return "G"
      when @x == 7 then return "H"
      else
      # Raise an error here.
     end
    end

    def convert_y_to_row
    (8 - @y).to_s
    end

  # Ruby to string method.  This is called method overloading.
    def to_s
       convert_x_to_column + convert_y_to_row
    end

=end


end
