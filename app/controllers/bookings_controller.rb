class BookingsController < ApplicationController
before_action :authenticate_user!

def index
  @bookings = Booking.all
end

def create
  @listing = Listing.find(params[:listing_id])
  @booking = @listing.bookings.new(booking_params)
 @booking.user = current_user
  if @booking.save
    redirect_to mybookings_path(@booking), notice: "Booking created!"
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

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
