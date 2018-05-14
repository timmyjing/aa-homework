class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.integer :album_id, null: false
      t.integer :ord, null: false
      t.string :title, null: false
      t.boolean :bonus, null: false, default: false
      t.text :lyrics
      t.timestamps
    end
    add_index :tracks, :album_id
    add_index :tracks, :title
    add_index :tracks, [:album_id, :ord], unique: true
    add_index :tracks, [:album_id, :title], unique: true
  end
end
