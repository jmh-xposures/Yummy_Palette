class TagsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @tag = Tag.new(tag_params)
    @tag.restaurant = @restaurant
    if @tag.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end
end
