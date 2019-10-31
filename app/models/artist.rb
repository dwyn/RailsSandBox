

class Artist < ApplicationRecord
  has_many :songs
belongs_to :user
  # # , generic_default: true --> will generate a slug based on your model name if the headline is blank.
  slug :artist_name

  def artist_name
    "#{id}-#{name}"
  end

end
