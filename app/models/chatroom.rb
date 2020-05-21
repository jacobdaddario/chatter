class Chatroom < ApplicationRecord
	has_many :subscriptions
	has_many :users, through: :subscriptions
	has_many :messages

	validates :name, presence: true, length: { maximum: 80 }
end
