class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @cuisines = Cuisine.all
    @upvotes = Upvote.order(created_at: :desc).last(10).pluck(:restaurant_id)
    @restaurants = Restaurant.where(id: @upvotes)
    @cuisine_count = Cuisine.count
    @restaurant_count = Restaurant.count
    @user_count = User.count
  end
end
