class CreateChessPieces < ActiveRecord::Migration[5.2]
  def change
    create_table :chess_pieces do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "unicode"
      t.string "name"
      t.integer "game_id"
      t.integer "x_position"
      t.integer "y_position"
      t.timestamps
    end
  end
end
