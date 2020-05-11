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
		@chatroom = Chatroom.find(params[:id])

		respond_to :js
	end

	def update
		@chatroom = Chatroom.find(params[:id])

		if @chatroom.update(chatroom_params)
			flash.now[:notice] = "Chatroom successfully updated."
		else
			flash.now[:alert] = "Unable to update chatroom. Record had #{helpers.pluralize(@chatroom.errors.count, "error")}."
		end

		@chatroom.reload

		respond_to :js
	end

	def destroy
		@chatroom = Chatroom.find(params[:id]);
		@chatroom.delete
		flash[:notice] = "The chatroom was successfully deleted."

		respond_to :js
	end

		private

		def chatroom_params
			params.require(:chatroom).permit(:name)
		end
end
