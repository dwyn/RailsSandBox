

class Artist < ApplicationRecord
  has_many :songs
  belongs_to :user
  has_many :reviews, as: :reviewable

  # accepts_nested_attributes_for :songs

 def songs_attributes=(attributes)
    # binding.pry
    attributes.values.each do |item| 
       song = Song.find_or_create_by(item) if !item['title'].empty?
       self.songs << song
    end
  end

  # # , generic_default: true --> will generate a slug based on your model name if the headline is blank.
  slug :name

scope :popular, -> { where(popular: true) }


  # def artist_name
  #   "#{id}-#{name}"
  # end

end
