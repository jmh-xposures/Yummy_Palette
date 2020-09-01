class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    raise
    @cuisines = Cuisine.all
    @restaurants = Restaurant.latest_upvoted
    @cuisine_count = Cuisine.count
    @restaurant_count = Restaurant.count
    @user_count = User.count
  end
end
# ne pas oublié de mettre :photo dans page_params