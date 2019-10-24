class Game < ApplicationRecord
  attr_accessor :move_from, :move_to
  belongs_to :user
  has_many :moves
  has_many :chess_pieces
  after_create :layout_board

  def tile_colour (x,y)
    if(y.odd? && x.odd?) || (y.even? && x.even?)
      "white"
    elsif (y.odd? && x.even?) || (y.even? && x.odd?)
      "grey"
    end    
  end

  def layout_board
   #Code that will draw White Pawns
   (0..7).each do |x_position|
     Pawn.create(game_id: id, x_position: x_position, y_position: 6, unicode: "&#9817;", name: "White Pawn")
    end
  end
 






end

