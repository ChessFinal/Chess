class Game < ApplicationRecord
  attr_accessor :board
  belongs_to :user
  has_many :chess_pieces, class_name: "::ChessPiece"


  after_initialize do |game|
    setup_pieces
    @board = Board.new(game.chess_pieces.to_a)
    puts @board.inspect

  end

  def setup_pieces
  
        noob_pieces = [
     Pawn.create(x_position:0, y_position: 1, colour: 'black'),
     Pawn.create(x_position:1, y_position: 1, colour: 'black'),
     Pawn.create(x_position:2, y_position: 1, colour: 'black'),
     Pawn.create(x_position:3, y_position: 1, colour: 'black'),
     Pawn.create(x_position:4, y_position: 1, colour: 'black'),
     Pawn.create(x_position:5, y_position: 1, colour: 'black'),
     Pawn.create(x_position:6, y_position: 1, colour: 'black'),
     Pawn.create(x_position:7, y_position: 1, colour: 'black'),

     Rook.create(x_position:0, y_position: 0, colour:    'black'),
     Knight.create(x_position:1, y_position: 0, colour:  'black'),
     Bishop.create(x_position:2, y_position: 0, colour:  'black'),
     Queen.create(x_position:3, y_position: 0, colour:   'black'),
     King.create(x_position:4, y_position: 0, colour:    'black'),
     Bishop.create(x_position:5, y_position: 0, colour:  'black'),
     Knight.create(x_position:6, y_position: 0, colour:  'black'),
     Rook.create(x_position:7, y_position: 0, colour:    'black'),

     Pawn.create(x_position:0, y_position: 6, colour: 'white'),
     Pawn.create(x_position:1, y_position: 6, colour: 'white'),
     Pawn.create(x_position:2, y_position: 6, colour: 'white'),
     Pawn.create(x_position:3, y_position: 6, colour: 'white'),
     Pawn.create(x_position:4, y_position: 6, colour: 'white'),
     Pawn.create(x_position:5, y_position: 6, colour: 'white'),
     Pawn.create(x_position:6, y_position: 6, colour: 'white'),
     Pawn.create(x_position:7, y_position: 6, colour: 'white'),

     Rook.create(x_position:0, y_position: 7, colour:    'white'),
     Knight.create(x_position:1, y_position: 7, colour:  'white'),
     Bishop.create(x_position:2, y_position: 7, colour:  'white'),
     King.create(x_position:3, y_position: 7, colour:   'white'),
     Queen.create(x_position:4, y_position: 7, colour:    'white'),
     Bishop.create(x_position:5, y_position: 7, colour:  'white'),
     Knight.create(x_position:6, y_position: 7, colour:  'white'),
     Rook.create(x_position:7, y_position: 7, colour:    'white'),
    ]

    noob_pieces.each do |piece|
      self.chess_pieces << piece
    end
      

    #@chess_pieces = chess_pieces
    #puts @chess_pieces
    #puts "Does this hit?"

  end

 


end

