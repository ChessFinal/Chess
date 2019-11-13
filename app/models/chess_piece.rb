class ChessPiece 
 attr_accessor :x_position, :y_position, :colour, :id

  # This method checks whether a piece is present at (x, y).
  #
  # * *Args*    :
  #   - +x, y+ -> x and y coordinates of the instance piece
  # * *Returns* :
  #   - True if square at (x, y) is occupied
  #   - False otherwise
  #
 

  def initialize(x, y, colour, id)
    @x_position = x
    @y_position = y
    @colour = colour
    @id = id
    
  end


  def unicode
    nil
  end


  def occupied?(x, y)
    @game.pieces.where(x_position: x, y_position: y).present?
  end

  def check_path(x1, y1, x2, y2)
    if y1 == y2
      return 'horizontal'
    elsif x1 == x2
      return 'vertical'
    else
      # move diagonal
      @slope = (y2 - y1).to_f / (x2 - x1).to_f
    end
  end


  # This method determines whether the path between instance piece and destination is obstructed by another piece.
  #
  # * *Args*    :
  #   - +destination+ -> array containing x and y coordinates of the piece's intended destination
  # * *Returns* :
  #   - True if one or more squares between the piece and the destination are occupied
  #   - False otherwise
  # * *Raises* :
  #   - +RuntimeError+ -> if the path is not a straight line

  def is_obstructed?(destination)
    @game = Game.new
      # converts the location arrays into easier-to-read x and y terms
      x1 = self.x_position #assume starting points
      y1 = self.y_position
      x2 = destination[0]
      y2 = destination[1]
      # Determines whether the line between piece1 and the destination is horizontal or
     # vertical. If neither, then it calculates the slope of line between piece1 and destination.
      path = check_path(x1, y1, x2, y2)


    # move horizontal right to left
    if path == 'horizontal' && x1 < x2
      (x1 + 1).upto(x2 - 1) do |x|
        return true if occupied?(x, y1)
        #return true if there is a piece there
      end
    end


    # horizontal left to right
    if path == 'horizontal' && x1 > x2
      (x1 - 1).downto(x2 + 1) do |x|
        return true if occupied?(x, y1)
      end
    end


    # move vertical down
    if path == 'vertical' && y1 < y2
      (y1 + 1).upto(y2 - 1) do |y|
        return true if occupied?(x1, y)
      end
    end


    # move vertical up
    if path == 'vertical' && y1 > y2
      (y1 - 1).downto(y2 + 1) do |y|
        return true if occupied?(x1, y)
      end
    end
    if path == 'horizontal' || path == 'vertical'
      return false
    end


    # move diagonally down
    if @slope.abs == 1.0 && x1 < x2
      (x1 + 1).upto(x2 - 1) do |x|
        delta_y = x - x1
        y = y2 > y1 ? y1 + delta_y : y1 - delta_y
        return true if occupied?(x, y)
      end
    end


    # move diagonally up
    if @slope.abs == 1.0 && x1 > x2
      (x1 - 1).downto(x2 + 1) do |x|
        delta_y = x1 - x
        y = y2 > y1 ? y1 + delta_y : y1 - delta_y
        return true if occupied?(x, y)
      end
    end


    # not a straight diagonal line
    if @slope.abs != 1.0
      fail 'path is not a straight line'
    else return false
    end
  end

end



