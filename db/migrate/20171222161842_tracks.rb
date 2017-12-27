class Tracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :album
      t.string :artist
      t.integer :length
      t.string :playlist_id
    end
  end
end
