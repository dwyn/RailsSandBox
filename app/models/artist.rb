# frozen_string_literal: true

class Artist < ApplicationRecord
  has_many :songs
end
