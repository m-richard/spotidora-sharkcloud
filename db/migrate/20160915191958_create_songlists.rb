class CreateSonglists < ActiveRecord::Migration[4.2]
  def change
    create_table :songlists do |t|
      # t.integer :playlist_id, null: false
      t.belongs_to :song, null: false
      t.belongs_to :playlist, null: false
    end
  end
end
