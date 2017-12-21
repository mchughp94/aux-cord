class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.boolean :collaborative
      t.string :playlist_id
      t.string :name
      t.string :user_id
      t.string :song_id
      
      t.timestamps
    end
  end
end
