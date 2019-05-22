# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Ready go!"

Location.create!(name: "Philippe's Farm", address: "5333 Casgrain Avenue, Montreal", description: "Great farm for horror movie", price: 890, category: "plain", user: User.first)
Location.create!(name: "Sebastien's Farm", address: "350 Saint-Denis Avenue, Saint-Sauveur", description: "Great farm for love movie", price: 1560, category: "landscape", user: User.first)
Location.create!(name: "Great field", address: "32 Saint-Sauveur Street, Saint-Remi", description: "Great farm for horror movie", price: 890, category: "plain", user: User.second)
Location.create!(name: "Nice little house", address: "5849 Sherbrooke West Street, Montreal", description: "Nice little house with lovely garden", price: 450, category: "urban", user: User.second)
Location.create!(name: "Nice big appartment", address: "4818 Saint-Andre Street", description: "Nice big scary appartment", price: 678, category: "urban", user: User.last)
Location.create!(name: "Empty field near Mont-Tremblant", address: "243 Dorken Street", description: "Empty field well located", price: 586, category: "plain", user: User.last)
Location.create!(name: "Beautiful Field", address: "480 137th Avenue", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...", price: 900, category: "landscape", user: User.last)
Location.create!(name: "Beautiful Field", address: "480 137th Avenue", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...", price: 900, category: "landscape", user: User.last)
Location.create!(name: "Beautiful Field", address: "480 137th Avenue", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...", price: 900, category: "landscape", user: User.last)
puts "You're all set!"

