class ChangeIdColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :userId, :user_id
    rename_column :moves, :gameId, :game_id
  end
end
