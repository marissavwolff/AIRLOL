class Listing < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :category, inclusion: { in: ["witty", "dark", "dry", "slapstick", "family", "puns", "self-depreciating", "toilet", "satire", "awkward", "cringe"] }
end
