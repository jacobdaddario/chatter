module ChatroomsHelper
	def subscribe_or_show(user, chatroom)
		user.subscribed?(chatroom) ? link_to(chatroom.name, "#", class: "flex-grow mr-6 font-medium text-lg text-gray-900 hover:underline", data: { behavior: "chatroom-name" })
		 													 : render("subscriptions/form", user: user, chatroom: chatroom )
	end
end
