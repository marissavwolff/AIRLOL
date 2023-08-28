# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

  puts "doing seed here"
  # user = User.create!(name: "Bob", number: "+33456 781345", email: "bob@bob.lewagon", password: "kafjgalkjdfhgbald")
  10.times do
    listing = Listing.create!(category: "nsfw", description: Faker::Quotes::Shakespeare, user_id: 1)
#   user.save!
  end
#   listing.save!
