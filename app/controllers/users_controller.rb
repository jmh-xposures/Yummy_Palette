class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
end
# ne pas oublié de mettre :photo dans user_params