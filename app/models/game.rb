class Game < ApplicationRecord
  attr_accessor :move_from, :move_to
  belongs_to :user
  has_many :moves

  def is_obstructed?
    #         @game.chess_pieces('F1', 'D3')

    if @move_from == 'F1' and @move_to =='D3'
      return true
    elsif @move_from == 'A1' and @move_to == 'A4'
      return true
      # is_obstructed? D4 -> B5 => Raise an Error Message # invalid input.  Not diagnal, horizontal, or vertical.
    end
    if @move_from == 'D4' and @move_to == 'B5'
      puts "Does it hit this?"
      raise ArgumentError, 'foo'
    end
    false
  end

  def chess_moves(move_from, move_to)
    @move_from = move_from
    @move_to =  move_to
  end
end
