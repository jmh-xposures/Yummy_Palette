class UsersController < ApplicationController
  def show
    @users = User.find(params[:id])
  end
end
# ne pas oublié de mettre :photo dans user_params