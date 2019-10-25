class AddStufftoChesspieces < ActiveRecord::Migration[5.2]
  def change
    add_column :chess_pieces, :unicode, :string
    add_column :chess_pieces, :name, :string
  end
end
