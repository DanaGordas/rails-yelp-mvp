# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'italian', phone_number: "00441635463" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian', phone_number: "00441635462"}
frea = { name: "Frea", address: "Mitte, Berlin", category: 'french', phone_number: "00491635463" }
lemongrass = { name: "Lemongrass", address: "Simon-Dach str. 30, Berlin", category: 'japanese', phone_number: "00491625463" }
redentore = { name: "Redentore", address: "Via Roma 12, Verona, Italia", category: 'italian', phone_number: "00391635463" }

[dishoom, pizza_east, frea, lemongrass, redentore].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
