# frozen_string_literal: true

class AddDefaultValueToActive < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :active, :boolean, default: true
  end
end
