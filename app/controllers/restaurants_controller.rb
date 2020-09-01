class RestaurantsController < ApplicationController
  def show
      @restaurant = Restaurant.find(params[:id])
      @dish = Dish.new
      @user = current_user
      @review = Review.new
      @cuisine = @restaurant.cuisine
  end

  def index
   @restaurants = Restaurant.all
    if params[:query].present?
      @restaurants = Restaurant.search_by_restaurant_or_dish(params[:query])
    else
      @restaurants = Restaurant.all
    end
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
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @cuisine = Cuisine.find(params[:cuisine_id])
    @restaurant.cuisine = @cuisine
    if @restaurant.save!
      redirect_to restaurant_path(@restaurant)
    else
      render 'new'
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :vegan, :vegetarian, :latitude, :longitude, :photo)
  end
end
