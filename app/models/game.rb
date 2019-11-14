class Game < ApplicationRecord
  attr_accessor :move_from, :move_to, :board
  belongs_to :user
  has_many :moves
  has_many :chess_pieces

  after_initialize do |game|
    @board = Board.new
    @board.game = game
  end


=begin
  def tile_colour (x,y)
    if(y.odd? && x.odd?) || (y.even? && x.even?)
      "white"
    elsif (y.odd? && x.even?) || (y.even? && x.odd?)
      "grey"
    end    
  end
=end


end

