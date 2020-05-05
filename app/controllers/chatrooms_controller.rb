class ChatroomsController < ApplicationController
	before_action :authenticate_user!

	def index
		@chatrooms = Chatrooms.all
		authorize! :index, @chatroom
	end

	def create
		@chatroom = current_user.chatrooms.build
		authorize! :create, @chatroom
	end

	def update
		@chatroom = Chatroom.find(params[:id])
		authorize! :update, @chatroom
	end
end
