class Game < ApplicationRecord
  attr_accessor :board
  belongs_to :user
  has_many :chess_pieces, class_name: "::ChessPiece"


  after_initialize do |game|
    @board = Board.new(game.chess_pieces.to_a)
    puts @board.inspect

  end

end

