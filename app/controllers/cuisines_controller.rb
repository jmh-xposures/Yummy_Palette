class CuisinesController < ApplicationController
  def index
    @cuisines = Cuisine.all
  end

  def show
    @cuisine = Cuisine.find(params[:id])
    @restaurant = Restaurant.new
    @review = Review.new
    @upvote = Upvote.new
    @tag = Tag.new
  end
end
# ne pas oublié de mettre :photo dans cuisine_params