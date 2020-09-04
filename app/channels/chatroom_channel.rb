class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    restaurant = Restaurant.find(params[:id])
    stream_for restaurant
  end
end
