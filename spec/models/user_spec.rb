# require 'rails_helper'

#   # create_table "users", force: :cascade do |t|
#   #   t.string "first_name"
#   #   t.string "last_name"
#   #   t.string "email"
#   #   t.boolean "active", default: true
#   #   t.datetime "created_at", null: false
#   #   t.datetime "updated_at", null: false
#   #   t.string "password_digest"
#   #   t.string "username"
#   # end

# RSpec.describe User, type: :model do
#   context 'Validation tests' do

#     it 'ensures first name is present' do
#       user = User.new(last_name: 'Sala', email: 'email@gmail.com').save
#       expect(user).to eq(false)
#     end

#     it 'ensures last name is present' do
#       user = User.new(first_name: 'Daniel', email: 'email@gmail.com').save
#       expect(user).to eq(false)
#     end

#     it 'ensures email is present' do
#       user = User.new(first_name: 'Daniel', last_name: 'Sala').save
#       expect(user).to eq(false)
#     end
#   end

#   context 'Scope tests' do
#     let!(:params) {{ first_name: 'Connie', last_name: 'Hyman', email: 'Faker::Internet.unique.email'}}

#     before(:each) do
#       User.new(params).save
#       User.new(params).save
#       User.new(params.merge({active: true})).save
#       User.new(params.merge({active: false})).save
#       User.new(params.merge({active: false})).save
#     end

#     it 'should return active users' do
#       expect(User.active_users.size).to eq(3)
#     end

#     it 'should return inactive users' do
#       # binding.pry
#       expect(User.inactive_users.size).to eq(2)
#     end
#   end
# end
