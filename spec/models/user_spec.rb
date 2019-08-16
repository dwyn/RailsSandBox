require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validation tests' do

    it 'ensures first name is present' do
      user = User.new(last_name: 'Sala', email: 'email@gmail.com').save
      expect(user).to eq(false)
    end

    it 'ensures last name is present' do
      user = User.new(first_name: 'Daniel', email: 'email@gmail.com').save
      expect(user).to eq(false)
    end

    it 'ensures email is present' do
      user = User.new(first_name: 'Daniel', last_name: 'Sala').save
      expect(user).to eq(false)
    end

    # it 'ensures uniqness of email' do
    #   user1 = User.new(first_name: 'Dwayne', last_name: 'Paz', email: 'email@gmail.com').save
    #   user2 = User.new(first_name: 'Daniel', last_name: 'Sala', email: 'email@gmail.com').save
    #   expect(user2).to eq(false)
    # end
  end

  context 'Scope tests' do
    let!(:params) {{ first_name: 'Connie', last_name: 'Hyman', email: 'Faker::Internet.unique.email'}}

    before(:each) do
      User.new(params).save
      User.new(params).save
      User.new(params.merge({active: true})).save
      User.new(params.merge({active: false})).save
      User.new(params.merge({active: false})).save
    end

    it 'should return active users' do
      expect(User.active_users.size).to eq(3)
    end

    it 'should return inactive users' do
      # binding.pry
      expect(User.inactive_users.size).to eq(2)
    end
  end
end
