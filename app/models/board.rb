class Board
 attr_accessor :chess_pieces
 after_initialize :layout_board

  def initialize
    @chess_pieces = ([
     Pawn.new(1,0, 'white'),
     Pawn.new(1,1, 'white'),
     Pawn.new(1,2, 'white'),
     Pawn.new(1,3, 'white'),
     Pawn.new(1,4, 'white'),
     Pawn.new(1,5, 'white'),
     Pawn.new(1,6, 'white'),
     Pawn.new(1,7, 'white'),

     Rook.new(0,0, 'white'),
     Knight.new(0,1, 'white'),
     Bishop.new(0,2, 'white'),
     Queen.new(0,3, 'white'),
     King.new(0,4, 'white'),
     Bishop.new(0,5, 'white'),
     Knight.new(0,6, 'white'),
     Rook.new(0,7, 'white'),

     Pawn.new(6,0, 'black'),
     Pawn.new(6,1, 'black'),
     Pawn.new(6,2, 'black'),
     Pawn.new(6,3, 'black'),
     Pawn.new(6,4, 'black'),
     Pawn.new(6,5, 'black'),
     Pawn.new(6,6, 'black'),
     Pawn.new(6,7, 'black'),

     Rook.new(7,0,    'black'),
     Knight.new(7,1,  'black'),
     Bishop.new(7,2,  'black'),
     Queen.new(7,3,   'black'),
     King.new(7,4,    'black'),
     Bishop.new(7,5,  'black'),
     Knight.new(7,6,  'black'),
     Rook.new(7,7,    'black'),
    ])
  end

  def get_piece_at(x,y)
    @chess_pieces.each do |piece|
      if piece.x_position == x && piece.y_position == y
        return piece
      else
        nil
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
