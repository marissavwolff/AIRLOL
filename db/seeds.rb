# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


Listing.destroy_all
Review.destroy_all
User.destroy_all

puts "doing seed here"
User.create!(name: "Bob", number: "+33456 781345", email: "harry@lewagon.co.uk", password: "kafjgalkjdfhgbald")

20.times do
  myArray = ["witty", "dark", "dry", "slapstick", "family", "puns", "self-depreciating", "toilet", "satire", "awkward", "cringe"]
  name = ["HA HA HA", "Family Joke!", "Hilarious", "One line puns!", "Create a chuckle :D"]
  price = rand(1..10)
  location = ["London", "Madrid", "Paris", "Lisbon", "New York", "Singapore", "Tokyo", "Rome", "Amsterdam"]
  Listing.create!(category: myArray.sample, description: Faker::Quote.jack_handey, user_id: 1, name: name.sample, price: price, location: location.sample)
end

40.times do
  reviewcontent = ["Awesome!", "Cried my pants out", "Give me more!", "I laughed my pain out"]
  reviewrating = [1, 2, 3, 4, 5]
  listingid = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
  Review.create!(content: reviewcontent.sample, rating: reviewrating.sample, listing_id: listingid.sample, user_id: 1)
end

puts "created seeds"
