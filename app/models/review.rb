class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  belongs_to :bookings

  validates :rating, presence: true
end
