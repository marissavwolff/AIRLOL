# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Listing.destroy_all

puts "doing seed here"
User.create!(name: "Tom", number: "+33456 781345", email: "tim@lewagon", password: "kafjgalkjdfhgbald")

20.times do
  name = ['Make you friends cry of laughter', 'Win them all over with this humour', 'A joke a day', 'Laugh all day', 'LOL al; day']
  location = ['London', 'Melbourne', 'Lausanne', 'Milan', 'France']
  priceArray = [1, 2, 4, 56, 87, 23, 676, 23, 57, 54, 32]
  myArray = ["witty", "dark", "dry", "slapstick", "family", "puns", "self-depreciating", "toilet", "satire", "awkward", "cringe"]
  Listing.create!(name: name.sample, category: myArray.sample, description: Faker::Quote.jack_handey, price: priceArray.sample, location: location.sample, user_id: 1)
end

puts "created seeds"
