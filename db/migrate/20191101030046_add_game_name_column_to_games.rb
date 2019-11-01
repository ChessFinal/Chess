class AddGameNameColumnToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :gameName, :string
  end
end
