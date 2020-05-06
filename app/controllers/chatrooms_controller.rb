class ChatroomsController < ApplicationController
	authorize_resource
	before_action :authenticate_user!

	def index
		@chatrooms = Chatroom.all
	end

	def new
		@chatroom = Chatroom.new

		respond_to :js
	end

	def create
		@chatroom = Chatroom.new(chatroom_params)

		# Finish method here
	end

	def edit
	end

	def update
		@chatroom = Chatroom.find(params[:id])

		# Finish method here
	end

		private

		def chatroom_params
			params.require(:chatroom).permit(:name)
		end
end
