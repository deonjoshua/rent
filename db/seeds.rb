# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require "open-uri"
Tool.destroy_all
puts "seeding database"
20.times do
  file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
  article = Tool.new(
    name: Faker::Name.name,
    description: Faker::Lorem.sentence,
    rate: Faker::Number.number(digits: 2),
    condition:"Excellent",
    user: User.first
  )
  article.image.attach(io: file, filename: "nes.png", content_type: "image/png")
  article.save!
end
puts "finished"
