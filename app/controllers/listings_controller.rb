class ListingsController < ApplicationController
  def show
    @listings = Listing.all
  end
end
