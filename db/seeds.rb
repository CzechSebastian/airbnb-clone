# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Ready go!"

puts "Howdyyyyyyyyyyyyyyyyyyyyyyyyyy, let's clean the database"

Booking.destroy_all
Location.destroy_all
User.destroy_all

puts "Creating users"
User.create!(username: "Ben", email:"ben@email.com", password: "123456")
User.create!(username: "Seb", email:"seb@email.com", password: "123456")
User.create!(username: "Phil", email:"phil@email.com", password: "123456")

puts "Creating locations"

Location.create!(name: "Philippe's Farm", address: "5333 Casgrain Avenue, Montreal, Qc", description: "Great farm for horror movie", price: 890, category: "plain", user: User.last, remote_photo_url: "https://cdn.onlyinyourstate.com/wp-content/uploads/2015/07/17225116911_3e9e28f958_b-700x467.jpg")
Location.create!(name: "Sebastien's Farm", address: "145 Rue Saint-Sauveur, Sorel-Tracy, QC", description: "Great farm for love movie", price: 970, category: "plain", user: User.second, remote_photo_url:"https://defenders.org/sites/default/files/styles/homepage-feature-2015/public/northern-plains-mt-john-ruth.png?itok=xLKrSZCH")
Location.create!(name: "Ben's field", address: "758 avenue Clermont, Montreal, Qc", description: "Great farm for horror movie", price: 550, category: "plain", user: User.second, remote_photo_url: "https://images.charentelibre.fr/2017/12/31/5a48c3ac7971bbae29c5251d/golden/1000x625/apres-le-passage-des-pelleteuses-l-hypermarche-a-laisse-place-un-immense-terrain-vague-qui-doit-devenir-un-terrain-de-football-synthetique.jpg")
Location.create!(name: "Steph's plain", address: "160 Rue Matte, Mont-Tremblant, QC", description: "Nice plain in Saint-Remi", price: 670, category: "plain", user: User.second, remote_photo_url: "https://media.nationalgeographic.org/assets/photos/000/255/25557.jpg")
Location.create!(name: "Nice little house in Montreal", address: "5849  Rue Sherbrooke, Montreal, Qc", description: "Nice little house with lovely garden near downtown Montreal", price: 660, category: "urban", user: User.first, remote_photo_url:"https://www.theglobeandmail.com/resizer/-WqFeAJKSXmvpmHCyCQLl_vClVk=/1200x0/filters:quality(80)/arc-anglerfish-tgam-prod-tgam.s3.amazonaws.com/public/T4MYKDZIJNCL3BULYNVK6JUJYE.JPG")
Location.create!(name: "Nice big appartment", address: "4818 Saint-Andre Street, Qc", description: "Nice big scary appartment", price: 475, category: "urban", user: User.first, remote_photo_url: "https://immo.vrtx.co/pic450/17948370.jpg")
Location.create!(name: "Empty field near Mont-Tremblant", address: "243 Dorken Street, Qc", description: "Empty field well located near Mont-Tremblant", price: 990, category: "plain", user: User.last, remote_photo_url: "https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/N43HxKQDl/videoblocks-on-the-harvested-empty-field-on-the-hills-at-sunsetpanorama-picture_hwa1idezb_thumbnail-full01.png")
Location.create!(name: "Mark's cottage", address: "576 Highway, Alberta, Canada", description: "Old cottage with scary basement", price: 150, category: "landscape", user: User.last, remote_photo_url: "https://assets.savills.com/properties/GBWNREWNL170063L/WNL170063_10_l_gal.jpg")
Location.create!(name: "Beautiful Field", address: "158 Rue Matte, Mont-Tremblant, QC", description: "Empty field ready to be used!", price: 900, category: "landscape", user: User.first, remote_photo_url: "https://freedesignfile.com/upload/2017/05/Beautiful-field-scenery-Stock-Photo.jpg")

puts "You're all set cowboyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy, congratulations!!!!!!!"

