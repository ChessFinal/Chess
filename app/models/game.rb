class Game < ApplicationRecord
  attr_accessor :board
  belongs_to :user
  has_many :moves
  has_many :chess_pieces


  after_initialize do |game|
    @board = Board.new
    @board.game = game
  end

end

