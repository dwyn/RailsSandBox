# frozen_string_literal: true

require 'rails_helper'

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

RSpec.describe "Users", type: :feature do
  context 'create new user' do
    scenario 'should be successful' do
    
      visit new_user_path

      within('form') do #! <--- div .class #id
        fill_in 'user[username]', with: 'dwyn'
        fill_in 'user[first_name]', with: 'not'
        fill_in 'user[last_name]', with: 'dwayne'
        fill_in 'user[email]', with: 'dwayne@gmail.com'
        fill_in 'user[password_digest]', with: 'password'
      end

      click_button 'Create User!'
      expect(page).to have_content('dwyn')
      # expect(current_path).to eq(user_path)
    end

    scenario 'should fail'do
      visit new_user_path

      within('form') do #! <--- div .class #id
        fill_in 'user[username]', with: 'dwyn'
        fill_in 'user[first_name]', with: 'not'
        fill_in 'user[last_name]', with: 'dwayne'
        fill_in 'user[password_digest]', with: 'password'
      end

      click_button 'Create User!'
      expect(page).to have_content('Create User!')
    end
  end
end
