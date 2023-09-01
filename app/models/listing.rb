class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :category, inclusion: { in: ["witty", "dark", "dry", "slapstick", "family", "puns", "self-depreciating", "toilet", "satire", "awkward", "cringe"] }
  has_many :reviews, dependent: :destroy, through: :bookings
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search,
  against: [ :name, :location ],
  using: {
    tsearch: { prefix: true }
  }

  geocoded_by :location
  after_validation :geocode
  def available?
    availability
  end

end
