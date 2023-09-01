class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  has_many :reviews, dependent: :destroy

  validate :listing_must_have_availability

  def listing_must_have_availability
    if  listing && listing.availability.blank?
      errors.add(:base, "Listing must have availability selected to book")
    end
  end

end
