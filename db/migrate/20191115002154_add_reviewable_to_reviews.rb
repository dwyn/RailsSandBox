class AddReviewableToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :reviewable, polymorphic: true
  end
end
