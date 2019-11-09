class AddIndexToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :slug, :string
    add_index :artists, :slug, unique: true
  end
end
