class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.string :piece
      t.integer :coordinateX
      t.integer :coordinateY
      t.integer :playerId
      t.integer :gameId
      t.integer :moveCount
      t.datetime :movedAt
      t.boolean :isTaken
      t.boolean :colour
      t.timestamps
    end
  end
end
