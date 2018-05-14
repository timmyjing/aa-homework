class AddColumnsToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :band_id, :integer
    add_column :albums, :title, :string
    add_column :albums, :year, :integer
    add_column :albums, :live, :boolean
    add_index :albums, :band_id
    add_index :albums, :title
    add_index :albums, :year
    add_index :albums, :live
    add_index :albums, [:band_id, :title], unique: true
  end
end
