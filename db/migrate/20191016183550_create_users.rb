class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :userId
      t.string :userName
      t.string :userEmail
      t.integer :userWins
      t.integer :userLosses
      t.timestamps
    end
  end
end

