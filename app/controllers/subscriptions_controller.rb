class SubscriptionsController < ApplicationController
	authorize_resource
	before_action :authenticate_user!

	def create
		chatroom = Chatroom.find(params[:chatroom_id])

		current_user.subscriber(chatroom)
		flash[:info] = "Successfully subscribed to the #{chatroom.name}."
	end

	def destroy
		chatroom = Subscription.find(params[:id]).chatroom

		current_user.unsubscribe(chatroom)
		flash[:info] = "Successfully unsubscribed from #{chatroom.name}."
	end
end
