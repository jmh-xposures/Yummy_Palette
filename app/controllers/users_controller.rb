class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorites = Favorite.where(user: @user)
  end
end
# ne pas oublié de mettre :photo dans user_params