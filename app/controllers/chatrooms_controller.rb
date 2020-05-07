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

		if @chatroom.save
			flash.now[:notice] = "Chatroom successfully created."
		else
			flash.now[:alert] = "Unable to create chatroom. Record had #{helpers.pluralize(@chatroom.errors.count, "error")}."
		end

		@chatrooms = Chatroom.all

		respond_to :js
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
