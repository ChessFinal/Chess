
#reminder  =>  MVC

class Board
  attr_accessor :chess_pieces

  def initialize ()
    @chess_pieces = ([
      #black chess pieces
    [Rook.new(0, 0, 'black'),
    Knight.new(0, 1, 'black'),
    Bishop.new(0, 2, 'black'),
    King.new(0, 3, 'black'),
    Queen.new(0, 4, 'black'),
    Bishop.new(0, 5, 'black'),
    Knight.new(0, 6, 'black'),
    Rook.new(0, 7, 'black')],
    [Pawn.new(1, 0, 'black'),
    Pawn.new(1, 1, 'black'),
    Pawn.new(1, 2, 'black'),
    Pawn.new(1, 3, 'black'),
    Pawn.new(1, 4, 'black'),
    Pawn.new(1, 5, 'black'),
    Pawn.new(1, 6, 'black'),
    Pawn.new(1, 7, 'black')],

    #white chess pieces
    [Rook.new(7, 0, 'white'),
    Knight.new(7, 1, 'white'),
    Bishop.new(7, 2, 'white'),
    King.new(7, 3, 'white'),
    Queen.new(7, 4, 'white'),
    Bishop.new(7, 5, 'white'),
    Knight.new(7, 6, 'white'),
    Rook.new(7, 7, 'white')],
    [Pawn.new(6, 0, 'white'),
    Pawn.new(6, 1, 'white'),
    Pawn.new(6, 2, 'white'),
    Pawn.new(6, 3, 'white'),
    Pawn.new(6, 4, 'white'),
    Pawn.new(6, 5, 'white'),
    Pawn.new(6, 6, 'white'),
    Pawn.new(6, 7, 'white')]
    ]);
  end


 def getPieceforXY (x, y)
    @chess_pieces.each do |piece|
      if (piece.x == x) && (piece.y == y)
        return (piece)
      end
    end
      nil
  end

  def is_obstructed?(x1, y1, x2, y2)
    x1 = [0..7],
    y1 = [0..7],
    x2 = [0..7],
    y2 = [0..7]
  end
end
