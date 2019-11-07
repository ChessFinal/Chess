class Game < ApplicationRecord
  attr_accessor :move_from, :move_to, :board
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


  def after_initialize do |game|
    @board = Board.new
  end

end

