# frozen_string_literal: true

class Song < ApplicationRecord
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
  has_many :reviews, as: :reviewable

  
scope :explicit_songs, -> { where(explicit: true) }
scope :not_explicit_songs, -> { where(explicit: true) }

  # def self.explicit_songs
  #   where(explicit: true)
  # end

  # def genres_attributes=(attributes)
  #   attributes.values.each do |genre_attribute|
  #     genre = Genre.find_or_create_by(genre_attribute) #if !attributes['name'].empty?
  #     self.genres << genre
  #   end
  # end

end
