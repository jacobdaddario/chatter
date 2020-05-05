class ChatroomsController < ApplicationController
	before_action :authenticate_user!

	def index
		@chatrooms = Chatrooms.all
		authorize! :index, @chatroom
	end

	def create
		@chatroom = Chatroom.new(cbatroom_params)
		authorize! :create, @chatroom

		# Finish method here
	end

	def update
		@chatroom = Chatroom.find(params[:id])
		authorize! :update, @chatroom

		# Finish method here
	end
end
