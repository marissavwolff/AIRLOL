# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


Listing.destroy_all
Review.destroy_all

puts "doing seed here"
User.create!(name: "Bob", number: "+33456 781345", email: "bob@lewagon.co.uk", password: "kafjgalkjdfhgbald")

20.times do
  myArray = ["witty", "dark", "dry", "slapstick", "family", "puns", "self-depreciating", "toilet", "satire", "awkward", "cringe"]
  name = ["HA HA HA", "Family Joke!", "Hilarious", "One line puns!", "Create a chuckle :D"]
  price = rand(0.01..0.99)
  location = ["London", "Madrid", "Paris", "Lisbon", "New York", "Singapore", "Tokyo", "Rome", "Amsterdam"]
  Listing.create!(category: myArray.sample, description: Faker::Quote.jack_handey, user_id: 1, name: name.sample, price: price, location: location.sample)
end


puts "created seeds"
