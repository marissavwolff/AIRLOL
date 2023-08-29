class ListingsController < ApplicationController
  # before_action :set_user, only: [:new, :create]
  before_action :set_listing, only: [:show, :destroy]

  def show
  end

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :category, :location, :availability, :description, :price, :photo)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
