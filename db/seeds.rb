# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "seeding database"
20.times do
  Tool.create!(
    name: Faker::Name.name,
    description: Faker::Lorem.sentence,
    rate: Faker::Number.number(digits: 2),
    condition:"Excellent",
    image_url:Faker::Placeholdit.image(size: '150x150', format: 'jpeg', background_color: :random),
    user: User.find(1)
  )
end
puts "finished"


