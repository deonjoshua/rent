# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning database"
Tool.destroy_all

puts "seeding database"
10.times do
  Tool.create(name: "screwdriver", description: "stainless steel, multi screw", rate: 10, condition: "new", image_url: "https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200")
end
puts "finished"
