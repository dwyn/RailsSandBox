# frozen_string_literal: true

class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.boolean :explicit
      t.integer :artist_id

      t.timestamps
    end
  end
end
