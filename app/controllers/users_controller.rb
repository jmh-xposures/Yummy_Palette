class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def show
    @user = User.find(params[:id])
    @favorites = Favorite.where(user: @user)
      @follow_users = Follow.where(follower_id: params[:id])
      @followed_users = Follow.where(followed_id: params[:id])
  end
end
# ne pas oublié de mettre :photo dans user_params
