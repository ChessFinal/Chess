class King < ChessPiece

  def valid_move?(new_x_coord, new_y_coord)
    x_difference = (new_x_coord - x_coord).abs
    y_difference = (new_y_coord - y_coord).abs
    if x_difference >= 2 || y_difference >= 2
      return false
    elsif x_difference == 0 && y_difference == 0
      return false
    else (x_difference <= 1) && (y_difference <= 1) && (x_difference + y_difference > 0)
      return true
    end
  end
end
