class Listing < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :category, inclusion: { in: ["black", "dark", "psycho", "slapstick", "family-appropriate", "puns", "self-depreciating", "nsfw", "satir", "awkward", "awesome"] }
end
