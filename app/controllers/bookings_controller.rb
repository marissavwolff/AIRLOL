class BookingsController < ApplicationController
before_action :authenticate_user!

def index
  @bookings = current_user.bookings
end

  def create
    listing = Listing.find(params[:listing_id])

    if listing.available?
      current_user.bookings.create(listing: listing)
      listing.update(available: false)
      flash[:success] = "You have booked some humour!"
    else
      flash[:error] = "Sorry, this humour is not available"
    end
    redirect_to listings_path
  end
end
