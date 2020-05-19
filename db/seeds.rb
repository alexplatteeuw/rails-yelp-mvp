# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian"}
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
petit_jean = { name: "Chez Petit Jean", address: "161 Avenue d'Italie, 75013 Paris", category: "japanese" }
clauzel = { name: "Le 23 Clauzel", address: "23 Clauzel 75009 Paris", category: "french" }
blue_monkey = { name: "Blue Monkey", address: "32 rue Frémicourt 75017 Paris", category: "chinese"  }

[dishoom, pizza_east, petit_jean, clauzel, blue_monkey].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
