class FavoritesController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @favorite = Favorite.new(user: current_user, restaurant: @restaurant)
    if @favorite.save
      redirect_to restaurant_path(@restaurant)
    else
      flash[:warning] = "Could not Favorite. Please try again!"
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @favorite = Favorite.where(user: current_user, restaurant: @restaurant).first
    @favorite.destroy

    redirect_to restaurant_path(@restaurant)
  end
end
