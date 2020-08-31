class CuisinesController < ApplicationController
  def index
    @cuisines = Cuisine.all
    @restaurants = Restaurant.all
    @restaurants_coordinates = Restaurant.where.not(latitude: nil, longitude: nil)
    @markers = @restaurants_coordinates.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
    print @markers
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
    @cuisine_restaurants = Restaurant.where(cuisine_id: params[:id].to_i)
    @cuisine_users = User.where(cuisine_id: params[:id].to_i)
  end

  def create
    raise
  end
end

# ne pas oublié de mettre :photo dans cuisine_params