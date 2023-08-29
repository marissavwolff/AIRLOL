# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

  puts "doing seed here"
  User.create!(name: "Bob", number: "+33456 781345", email: "dylan@bob.lewagon", password: "kafjgalkjdfhgbald")
  Listing.create!(name: "My best humor", category: "nsfw", description: Faker::Quotes::Shakespeare, user_id: 1)
  User.create!(name: "Steve", number: "+33456 781325", email: "steven@bob.lewagon", password: "ka2fjgalkjdfhgbald")
  Listing.create!(name: "My second best humor", category: "satir", description: Faker::Quotes::Shakespeare, user_id: 2)
#   user.save!
#   listing.save!
