class ListingsController < ApplicationController
  def show
    @listing = Listing.find(params[:id])
  end

  def index
    @listings = Listing.all
  end
end
