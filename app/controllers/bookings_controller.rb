class BookingsController < ApplicationController
before_action :authenticate_user!

def index
  @bookings = Booking.all
end

def create
  @listing = Listing.find(params[:listing_id])
  @booking = @listing.bookings.new(booking_params)
 @booking.user = current_user
if @listing.availability.blank?
  flash[:alert] = "Listing must have availability selected to book."
  redirect_to @listing
  elsif @booking.save
    flash[:notice] = "Humour Secured"
    redirect_to mybookings_path
    flash[:alert] = "Humour Secured!"
  else
    render :new
  end
end

def new
  @listing = Listing.find(params[:listing_id])
  @booking = Booking.new
end


def destroy
  @booking = Booking.find(params[:id])
  @booking.destroy
  redirect_to mybookings_path, notice: "Cancelation was successful!"
end

def approve_booking
  @booking = Booking.find(params[:id])
  @booking.approved = true
  @booking.save
end

def decline_booking
  @booking = Booking.find(params[:id])
  @booking.destroy
  redirect_to booked_listings_path, notice: "You declined the booking!"
end


  private

  def booking_params
    params.require(:booking).permit(:date)
  end


end
