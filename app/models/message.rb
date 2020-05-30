class Message < ApplicationRecord
	belongs_to :user
	belongs_to :chatroom

	validates :content, presence: true, length: { maximum: 280 }
end
