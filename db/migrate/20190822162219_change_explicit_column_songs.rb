# frozen_string_literal: true

class ChangeExplicitColumnSongs < ActiveRecord::Migration[5.2]
  def change
    change_column :songs, :explicit, :boolean, default: true
  end
end
