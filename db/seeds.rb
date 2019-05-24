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

Location.create!(name: "Desert", address: "5333 Casgrain Avenue, Montreal, Qc", description: "Full of sand...", price: 890, category: "landscape", user: User.last, remote_photo_url: "https://images.unsplash.com/photo-1516653980844-c68df1de5249?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
Location.create!(name: "Scary Factory", address: "145 Rue Saint-Sauveur, Sorel-Tracy, QC", description: "Very terrific for Horror movies", price: 970, category: "urban", user: User.second, remote_photo_url:"https://images.unsplash.com/photo-1428606072838-3280ee194d54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
Location.create!(name: "Ben's house", address: "758 avenue Clermont, Montreal, Qc", description: "Great room for horror movie", price: 550, category: "plain", user: User.second, remote_photo_url: "https://images.unsplash.com/photo-1484319047745-8312fb87003c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1428&q=80")
Location.create!(name: "Fun Fair", address: "160 Rue Matte, Mont-Tremblant, QC", description: "For disneyland lover's", price: 670, category: "plain", user: User.second, remote_photo_url: "https://images.unsplash.com/photo-1495013939822-0b3c84065ed3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1402&q=80")
Location.create!(name: "Nice little house in Montreal", address: "5849  Rue Sherbrooke, Montreal, Qc", description: "Nice little house near downtown Montreal", price: 660, category: "urban", user: User.first, remote_photo_url:"https://www.theglobeandmail.com/resizer/-WqFeAJKSXmvpmHCyCQLl_vClVk=/1200x0/filters:quality(80)/arc-anglerfish-tgam-prod-tgam.s3.amazonaws.com/public/T4MYKDZIJNCL3BULYNVK6JUJYE.JPG")
Location.create!(name: "Nice big appartment", address: "4818 Saint-Andre Street, Qc", description: "Nice big scary appartment", price: 475, category: "urban", user: User.first, remote_photo_url: "https://immo.vrtx.co/pic450/17948370.jpg")
Location.create!(name: "Empty field near Mont-Tremblant", address: "243 Dorken Street, Qc", description: "Empty field near Mont-Tremblant", price: 990, category: "plain", user: User.last, remote_photo_url: "https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/N43HxKQDl/videoblocks-on-the-harvested-empty-field-on-the-hills-at-sunsetpanorama-picture_hwa1idezb_thumbnail-full01.png")
Location.create!(name: "Mark's cottage", address: "576 Highway, Alberta, Canada", description: "Old cottage with scary basement", price: 150, category: "landscape", user: User.last, remote_photo_url: "https://assets.savills.com/properties/GBWNREWNL170063L/WNL170063_10_l_gal.jpg")
Location.create!(name: "Beautiful Field", address: "158 Rue Matte, Mont-Tremblant, QC", description: "Empty field ready to be used!", price: 900, category: "landscape", user: User.first, remote_photo_url: "https://freedesignfile.com/upload/2017/05/Beautiful-field-scenery-Stock-Photo.jpg")

puts "You're all set cowboyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy, congratulations!!!!!!!"

