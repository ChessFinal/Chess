class Board
 attr_accessor :chess_pieces, :game

  def initialize

    @chess_pieces = [
     Pawn.new(0,1, 'black', 1),
     Pawn.new(1,1, 'black', 2),
     Pawn.new(2,1, 'black', 3),
     Pawn.new(3,1, 'black', 4),
     Pawn.new(4,1, 'black', 5),
     Pawn.new(5,1, 'black', 6),
     Pawn.new(6,1, 'black', 7),
     Pawn.new(7,1, 'black', 8),

     Rook.new(0,0,    'black', 9),
     Knight.new(1,0,  'black', 10),
     Bishop.new(2,0,  'black', 11),
     Queen.new(3,0,   'black', 12),
     King.new(4,0,    'black', 13),
     Bishop.new(5,0,  'black', 14),
     Knight.new(6,0,  'black', 15),
     Rook.new(7,0,    'black', 16),

     Pawn.new(0,6, 'white', 17),
     Pawn.new(1,6, 'white', 18),
     Pawn.new(2,6, 'white', 19),
     Pawn.new(3,6, 'white', 20),
     Pawn.new(4,6, 'white', 21),
     Pawn.new(5,6, 'white', 22),
     Pawn.new(6,6, 'white', 23),
     Pawn.new(7,6, 'white', 24),

     Rook.new(0,7,    'white', 25),
     Knight.new(1,7,  'white', 26),
     Bishop.new(2,7,  'white', 27),
     King.new(3,7,   'white', 28),
     Queen.new(4,7,    'white', 29),
     Bishop.new(5,7,  'white', 30),
     Knight.new(6,7,  'white', 31),
     Rook.new(7,7,    'white', 32),
    ]

  end

  def get_piece_at(x,y)
    @chess_pieces.each do |piece|
      if piece.x_position.to_i == x.to_i && piece.y_position.to_i == y.to_i
        return piece
      end
    end
  end

  def get_colour(x,y)
    if(y.odd? && x.odd?) || (y.even? && x.even?)
      "white"
    elsif (y.odd? && x.even?) || (y.even? && x.odd?)
      "grey"
    end
  end
end

=begin
    #Code that will draw White Pawns
   (0..7).each do |x_position|
     Pawn.create(game_id: id, x_position: x_position, y_position: 6, unicode: "&#9817;", name: "White Pawn")
   end
   #Code that will draw Black Pawns
   (0..7).each do |x_position|
     Pawn.create(game_id: id, x_position: x_position, y_position: 1, unicode: "&#9823;", name: "Black Pawn")
   end
   #Code that will draw White Rooks
   [0, 7].each do |x_position|
     Rook.create(game_id: id, x_position: x_position, y_position: 7, unicode: "&#9814;", name: "White Rook")
   end
   #Code that will draw Black Rooks
   [0, 7].each do |x_position|
     Rook.create(game_id: id, x_position: x_position, y_position: 0, unicode: "&#9820;", name: "Black Rook")
   end
   #Code that will draw White Knights
   [1, 6].each do |x_position|
     Knight.create(game_id: id, x_position: x_position, y_position: 7, unicode: "&#9816;", name: "White Knight")
   end
   #Code that will draw Black Knights
   [1, 6].each do |x_position|
     Knight.create(game_id: id, x_position: x_position, y_position: 0, unicode: "&#9822;", name: "Black Knight")
   end
   #Code that will draw White Bishops
   [2, 5].each do |x_position|
     Bishop.create(game_id: id, x_position: x_position, y_position: 7, unicode: "&#9815;", name: "White Bishop")
   end
   #Code that will draw Black Bishops
   [2, 5].each do |x_position|
     Bishop.create(game_id: id, x_position: x_position, y_position: 0, unicode: "&#9821;", name: "Black Bishop")
   end
   #Code that will draw White Queen
     Queen.create(game_id: id, x_position: 3, y_position: 7, unicode: "&#9813;", name: "White Queen")
   #Code that will draw Black Queen
     Queen.create(game_id: id, x_position: 3, y_position: 0, unicode: "&#9819;", name: "Black Queen")
   #Code that will draw White King
     King.create(game_id: id, x_position: 4, y_position: 7, unicode: "&#9812;", name: "White King")
   #Code that will draw Black Queen
     King.create(game_id: id, x_position: 4, y_position: 0, unicode: "&#9818;", name: "Black King")
=end
