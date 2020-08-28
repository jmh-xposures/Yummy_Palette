class CuisinesController < ApplicationController
  def index
    @cuisines = Cuisine.all
    @restaurants = Restaurant.all

    @cuisine_restaurants = {}
    @cuisines.each do |cuisine|
      @cuisine_restaurants[cuisine.name] = Restaurant.where("restaurants.cuisine_id = #{cuisine.id}")
    end
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