class SubscriptionsController < ApplicationController
	def create
		chatroom = Chatroom.find(params[:chatroom_id])

		current_user.subscriptions.create(chatroom_id: chatroom.id)
		flash[:info] = "Successfully subscribed to the #{chatroom.name}."
	end

	def destroy
		subscription = Subscription.find(params[:id])
		chatroom = Chatroom.find(params[:id])

		subscription.destroy
		flash[:info] = "Successfully unsubscribed from #{chatroom.name}."
	end
end
