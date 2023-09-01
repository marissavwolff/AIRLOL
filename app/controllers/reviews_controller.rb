class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking

    if @review.save
      flash[:success] = "Review Submitted"
      redirect_to listing_path(@booking.listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
