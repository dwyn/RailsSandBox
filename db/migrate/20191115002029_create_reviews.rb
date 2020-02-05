class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :stars
      t.string :title

      t.timestamps
    end
  end
end
