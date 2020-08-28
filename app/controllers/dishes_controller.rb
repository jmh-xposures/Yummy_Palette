class DishesController < ApplicationController
  def create
    dish = Dish.create(dish_params)
    @restaurant = Restaurant.find(params[:dish][:restaurant_id])
    tag = Tag.create(dish: dish, restaurant: @restaurant, user: current_user)
    redirect_to restaurant_path(@restaurant)
  end

  private

  def dish_params
    params.require(:dish).permit(:name)
  end
end
