require 'rails_helper'

RSpec.describe Song, type: :model do

  #!  What part, of what unit are we testing? (Scopes!)
  context 'Scope tests' do 

    #!  Lets create a few song isntances to use 
    #!  before each test!

    #!  First declare the params hash
    let!(:song_params) {{ title: Faker::Hipster.word.capitalize, artist_id: Faker::Number.within(range: 1..10}}

    #!  Next, lets tell Rspec what to do before each test
    before(:each) do
      Song.new(song_params).save
      Song.new(song_params).save
      Song.new(song_params.merge({explicit: true})).save
      Song.new(song_params.merge({explicit: false})).save
      Song.new(song_params.merge({explicit: false})).save
    end

    #!  Scope for  all explicit songs

    #!  Scope for  all songs that aren't explicit

    #!  Scope for finding all songs belonging to a particular artist?
    
    #!  Scope for finding a song given a certain title?
    
    #! Scope for finding a list of songs whose title contains the letter T? 
  end
end