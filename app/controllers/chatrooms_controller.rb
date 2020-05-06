class ChatroomsController < ApplicationController
	authorize_resource
	before_action :authenticate_user!

	def index
		@chatrooms = Chatroom.all
	end

	def create
		@chatroom = Chatroom.new(cbatroom_params)

		# Finish method here
	end

	def update
		@chatroom = Chatroom.find(params[:id])

		# Finish method here
	end
end
