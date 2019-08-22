class User < ApplicationRecord

  has_secure_password
  
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
  # # validates :email, uniqueness: true


  # scope :active_users, -> {where(active: true)}
  # scope :inactive_users, -> {where(active: false)}
end
