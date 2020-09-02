class FollowsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @follow = Follow.new(follower: current_user, followed: @user)
    if @follow.save
      redirect_to user_path(@user)
    else
      flash[:warning] = "Could not follow. Please try again!"
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @follow = Follow.where(follower: current_user, followed: @user).first
    @follow.destroy

    redirect_to user_path(@user)
  end

end
# ne pas oublié de mettre :photo dans follow_params
