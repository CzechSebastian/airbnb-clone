# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Ready go!"
Location.create!(name: "Ferme a Tigui", address: "5333 cascouille", description: "dans un champ de mais", price: 900000, category: "agricole", user: User.first)
puts "You're all set!"
