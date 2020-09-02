class UpvotesController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @upvote = Upvote.new(user: current_user, restaurant: @restaurant)
    if @upvote.save
      redirect_to restaurant_path(@restaurant)
    else
      flash[:warning] = "Could not upvote. Please try again!"
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @upvote = Upvote.where(user: current_user, restaurant: @restaurant).first
    @upvote.destroy

    redirect_to restaurant_path(@restaurant)
  end
end
