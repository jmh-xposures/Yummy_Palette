class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @cuisine = @restaurant.cuisine

    if @review.save
      
      redirect_to restaurant_path(@restaurant)
    else

      redirect_to restaurant_path(@restaurant)
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :restaurant_id, :user_id)
  end
end
