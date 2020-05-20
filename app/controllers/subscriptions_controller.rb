class SubscriptionsController < ApplicationController
	authorize_resource
	before_action :authenticate_user!

	def create
		chatroom = Chatroom.find(params[:subscription][:chatroom_id])

		current_user.subscribe(chatroom)
		flash.now[:notice] = "Successfully subscribed to the #{chatroom.name}."

		@chatrooms = Chatroom.all

		respond_to :js
	end

	def destroy
		chatroom = Subscription.find(params[:id]).chatroom

		current_user.unsubscribe(chatroom)
		flash.now[:notice] = "Successfully unsubscribed from #{chatroom.name}."

		@chatrooms = Chatroom.all

		respond_to :js
	end
end
