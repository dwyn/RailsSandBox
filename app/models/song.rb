class Song < ApplicationRecord
  belongs_to :artist

  has_many :song_genres
  has_many :genres, through: :song_genres
end


# find
# create_with
# distinct
# eager_load
# extending
# from
# group
# having
# includes
# joins
# left_outer_joins
# limit
# lock
# none
# offset
# order
# preload
# readonly
# references
# reorder
# reverse_order
# select
# where