class CreatePlaylists < ActiveRecord::Migration[4.2]
  def change
    create_table :playlists do |t|
      t.string :name, null: false
      t.string :creator, null: false
      t.string :description
    end
  end
end
