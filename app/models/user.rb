# frozen_string_literal: true

class User < ApplicationRecord         
  has_many :artists, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
