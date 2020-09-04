class CuisinesController < ApplicationController
  def index
    @cuisines = Cuisine.all
    @restaurants = Restaurant.all
    @restaurants_coordinates = Restaurant.where.not(latitude: nil, longitude: nil)
    @markers = @restaurants_coordinates.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        mapPopup: render_to_string(partial: "shared/map_popup", locals: { restaurant: restaurant })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
    print @markers

    @cuisine_restaurants = {}
    @cuisines.each do |cuisine|
      @cuisine_restaurants[cuisine.name] = Restaurant.includes(:favorites, :upvotes, :cuisine).with_attached_photo.upvoted.select do |restaurant| 
        restaurant.cuisine_id = cuisine.id
      end
    end
  
  end

  def show
    @cuisine = Cuisine.find(params[:id])
    @restaurant = Restaurant.new
    @review = Review.new
    @upvote = Upvote.new
    @tag = Tag.new
    @cuisine_restaurants = Restaurant.where(cuisine_id: params[:id].to_i, )
    @cuisine_users = User.where(cuisine_id: params[:id].to_i)
    @global_restaurants = Restaurant.upvoted
    @pending_restaurants = @cuisine_restaurants - @global_restaurants
  end
end

# ne pas oublié de mettre :photo dans cuisine_params
