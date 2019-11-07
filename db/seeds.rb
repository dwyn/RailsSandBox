
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
Artist.destroy_all
Song.destroy_all

# ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'artists'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'songs'")



# User.create!(username: "dwyn", first_name: "Dwayne", last_name: "H.", email: "dwayne@email.com", password: "password" )
# User.create!(username: "mart.", first_name: "Mart", last_name: "M.", email: "mart@email.com", password: "password" )

p "#{User.count} Users created!"


20.times do
  Artist.create!(
    user_id: Faker::Number.between(from: User.first.id, to: User.last.id),
    name: Faker::Music.unique.band,
    bio: Faker::Hipster.paragraphs,
    location: Faker::Space.planet
  )
end

p "#{Artist.count} Artists created!"


100.times do
  Song.create!(
    title: Faker::Hipster.word,
    explicit: Faker::Boolean.boolean,
    artist_id: Faker::Number.between(from: Artist.first.id, to: Artist.last.id)
  )
end

p "#{Song.all.count} Songs created!"