# frozen_string_literal: true

class SongGenre < ApplicationRecord
  belongs_to :genre
  belongs_to :song
end
