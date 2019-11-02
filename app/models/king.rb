class King < ChessPiece

  def horizontal_valid_move?(new_y_coord)
    y_difference = (new_y_coord - y_coord).abs
    if y_difference >= 2
      return false #you moved too many spaces left/right
    elsif y_difference == 0
      return false #you didn't move
    else (y_difference <= 1)
    return true #you moved left/right
    end
  end

  def vertical_valid_move?(new_x_coord)
    x_difference = (new_x_coord - x_coord).abs
    if x_difference >= 2
    return false #you moved too many spaces up/down
    elsif x_difference == 0
    return false #you didn't move
    else (x_difference <= 1)
    return true #you moved up/down
    end
  end
end



#    x_difference = (new_x_coord - x_coord).abs
#    y_difference = (new_y_coord - y_coord).abs
#    if x_difference >= 2 || y_difference >= 2
#      return false #you moved too many spaces
#    elsif x_difference == 0 && y_difference == 0
#      return false #you didn't move
#    else (x_difference <= 1) && (y_difference <= 1) && (x_difference + y_difference > 0)
#      return true #either you moved up/down/left/right
#    end
#  end
#end



