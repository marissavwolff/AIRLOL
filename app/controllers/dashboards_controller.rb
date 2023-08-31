class DashboardsController < ApplicationController
  before_action :authenticate_user! # Make sure the user is authenticated

  def mylistings
    @listings = current_user.listings # Fetch listings associated with the current user
  end

  def mybookings
    @bookings = current_user.bookings
  end

  def booked_listings
    @user = current_user
    @unapproved_bookings = Booking.where(listing_id: @user.listings.select(:id), approved: false)
  end

end
