class Listing < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :category, inclusion: { in: ["black", "dark", "psycho", "slapstick", "family-appropriate", "puns", "self-depreciating", "nsfw", "satir", "awkward", "awesome"] }
end
