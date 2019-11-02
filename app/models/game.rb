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
   (0..7).each do |coordinateX|
     Pawn.create(game_id: id, coordinateX: coordinateX, coordinateY: 6, unicode: "&#9817;", name: "White Pawn")
   end
   #Code that will draw Black Pawns
   (0..7).each do |coordinateX|
     Pawn.create(game_id: id, coordinateX: coordinateX, coordinateY: 1, unicode: "&#9823;", name: "Black Pawn")
   end
   #Code that will draw White Rooks
   [0, 7].each do |coordinateX|
     Rook.create(game_id: id, coordinateX: coordinateX, coordinateY: 7, unicode: "&#9814;", name: "White Rook")
   end
   #Code that will draw Black Rooks
   [0, 7].each do |coordinateX|
     Rook.create(game_id: id, coordinateX: coordinateX, coordinateY: 0, unicode: "&#9820;", name: "Black Rook")
   end
   #Code that will draw White Knights
   [1, 6].each do |coordinateX|
     Knight.create(game_id: id, coordinateX: coordinateX, coordinateY: 7, unicode: "&#9816;", name: "White Knight")
   end
   #Code that will draw Black Knights
   [1, 6].each do |coordinateX|
     Knight.create(game_id: id, coordinateX: coordinateX, coordinateY: 0, unicode: "&#9822;", name: "Black Knight")
   end
   #Code that will draw White Bishops
   [2, 5].each do |coordinateX|
     Bishop.create(game_id: id, coordinateX: coordinateX, coordinateY: 7, unicode: "&#9815;", name: "White Bishop")
   end
   #Code that will draw Black Bishops
   [2, 5].each do |coordinateX|
     Bishop.create(game_id: id, coordinateX: coordinateX, coordinateY: 0, unicode: "&#9821;", name: "Black Bishop")
   end
   #Code that will draw White Queen
     Queen.create(game_id: id, coordinateX: 3, coordinateY: 7, unicode: "&#9813;", name: "White Queen")
   #Code that will draw Black Queen
     Queen.create(game_id: id, coordinateX: 3, coordinateY: 0, unicode: "&#9819;", name: "Black Queen")
   #Code that will draw White King
     King.create(game_id: id, coordinateX: 4, coordinateY: 7, unicode: "&#9812;", name: "White King")
   #Code that will draw Black Queen
     King.create(game_id: id, coordinateX: 4, coordinateY: 0, unicode: "&#9818;", name: "Black King")
  end
 






end

