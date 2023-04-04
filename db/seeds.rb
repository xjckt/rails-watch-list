# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts " cleaning database"
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all
puts "creating movies"
10.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: "https://picsum.photos/200/300",
    rating: rand(1..5)
  )
  puts "movie #{Movie.last.id} created"
end
