# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
50.times do
  song = Song.new(
    title: Faker::Name.name,
    album: Faker::Music.album,
    artist: Faker::Music.band ,
    year: Faker::Date.in_date_period
  )
  song.save
end
