class AddUnicodeColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :moves, :unicode, :string
  end
end
