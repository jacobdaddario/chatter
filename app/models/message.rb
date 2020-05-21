class Message < ApplicationRecord
	has_one :user
	has_one :chatroom

	validates :content, presence: true, length: { maximum: 280 }
end
