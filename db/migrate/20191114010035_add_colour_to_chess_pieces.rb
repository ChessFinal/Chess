class AddColourToChessPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :chess_pieces, :colour, :string
  end
end
