# frozen_string_literal: true

class Artist < ApplicationRecord
  has_many :songs

  accepts_nested_attributes_for :songs

end
