class ReviewsController < ApplicationController
  before_action :authenticate_user!  # Ensure user is logged in

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    @review.user = current_user  # Assuming you're using Devise or similar

    if @review.save
      redirect_to @restaurant, notice: 'Review added successfully!'
    else
      redirect_to @restaurant, alert: 'Failed to add review.'
    end

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
