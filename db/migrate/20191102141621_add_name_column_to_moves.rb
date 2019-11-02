class AddNameColumnToMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :moves, :name, :string
  end
end
