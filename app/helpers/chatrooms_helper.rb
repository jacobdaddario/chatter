module ChatroomsHelper
	def subscribe_or_show(user, chatroom)
		user.subscribed?(chatroom) ? render("chatrooms/link", chatroom: chatroom)
		 													 : render("subscriptions/form", user: user, chatroom: chatroom )
	end
end
