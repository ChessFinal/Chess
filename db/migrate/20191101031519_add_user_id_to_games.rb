class AddUserIdToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :userId, :integer
  end
end
