class User < ApplicationRecord         
 has_secure_password
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