class MessagesController < ApplicationController
	def create
	 @message = Message.new( message_params)
	 @restaurant = Restaurant.find(params[:restaurant_id])
	 @message.restaurant = @restaurant
	 @message.user = current_user
	 @message.save
	 redirect_to restaurant_messages_path(@restaurant)
	end	

 	def index
 		@restaurant = Restaurant.find(params[:restaurant_id])
 		@message = Message.new
 	end	

	private 

	def message_params
		params.require(:message).permit(:content)
	end	
end

