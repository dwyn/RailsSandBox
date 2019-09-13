# require 'rails_helper'

#   # create_table "songs", force: :cascade do |t|
#   #   t.string "title"
#   #   t.boolean "explicit", default: true
#   #   t.integer "artist_id"
#   #   t.datetime "created_at", null: false
#   #   t.datetime "updated_at", null: false
#   # end

# RSpec.describe Song, type: :model do

#   #!  What part, of what unit are we testing? (Scopes!)
#   context 'Scope tests' do 

#     #!  Lets create a few song isntances to use 
#     #!  before each test!

#     #!  First declare the params hash
#     let!(:song_params) {{ title: Faker::Hipster.word.capitalize, artist_id: Faker::Number.within(range: 1..10)}}

#     #!  Next, lets tell Rspec what to do before each test
#     #!  In this case, I want to persist some users to play with
#     before(:each) do
#       Song.create!(song_params)
#       Song.create!(song_params)
#       Song.create!(song_params.merge({explicit: false}))
#       Song.create!(song_params.merge({explicit: false}))
#       Song.create!(song_params.merge({explicit: false}))
#     end

#     #!  Scope for  all explicit songs
#     it 'Returns all explicit songs' do
#       expect(Song.all_explicit.size).to eq(2)
#     end

#     #!  Scope for  all songs that aren't explicit
#     it 'Returns all not explicit songs' do
#       expect(Song.not_explicit.size).to eq(3)
#     end

#     #!  Scope for finding all songs belonging to a particular artist?
    
#     #!  Scope for finding a song given a certain title?
    
#     #! Scope for finding a list of songs whose title contains the letter T? 
#   end
# end