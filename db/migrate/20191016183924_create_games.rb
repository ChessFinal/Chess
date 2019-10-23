class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :gameId
      t.integer :player1Id
      t.integer :player2Id
      t.integer :turn
      t.integer :moveCount
      t.datetime :created
      t.datetime :finished
      t.timestamps
    end
  end
end
