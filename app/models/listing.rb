class Listing < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :category, inclusion: { in: ["witty", "dark", "dry", "slapstick", "family", "puns", "self-depreciating", "toilet", "satire", "awkward", "cringe"] }
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_address?
end
