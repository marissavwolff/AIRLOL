class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :destroy, :update]

  def show
    @marker = { lat: @listing.latitude, lng: @listing.longitude, marker_html: render_to_string(partial: "marker") }
    if @listing.availability.present?
    @booking = Booking.new
    end
  end

  def index
    if params[:category].present?
      @listings = Listing.where(category: params[:category], availability: true)
    elsif params[:query].present?
      @listings = Listing.search(params[:query]).where(availability: true)
    elsif params[:price].present?
      @listings = Listing.where('price <= 5 AND availability = true')
    else
      @listings = Listing.where(availability: true)
    end
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to mylistings_path, notice: "Listing was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @listing.destroy
    redirect_to mylistings_path, status: :see_other
  end

  def edit
  end

  def update
    @listing.update(listing_params)
    redirect_to mylistings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :category, :location, :availability, :description, :price, :photo)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
