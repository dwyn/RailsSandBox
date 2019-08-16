# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Song.destroy_all

20.times do
  Artist.create!(
    name: Faker::Music.unique.band,
    bio: Faker::Hipster.paragraphs,
    location: Faker::Space.planet
  )
end

p "#{Artist.all.count} Artists created!"


100.times do
  Song.create!(
    title: Faker::Hipster.word,
    explicit: Faker::Boolean.boolean,
    artist: Faker::Number.between(1, 20),
  )
end
p "#{Song.all.count} Songs created!"