class UpvotesController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @upvote = Upvote.new(restaurant_params)
    @upvote.restaurant = @restaurant
    if @upvote.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end
end
