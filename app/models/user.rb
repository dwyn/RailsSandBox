class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         
  validates :email, presence: true
end




  # create_table "users", force: :cascade do |t|
  #   t.string "first_name"
  #   t.string "last_name"
  #   t.string "email"
  #   t.boolean "active", default: true
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.string "password_digest"
  #   t.string "username"
  # end