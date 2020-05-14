class Chatroom < ApplicationRecord
	has_many :subscriptions
	has_many :users, through: :subscriptions

	validates :name, presence: true, length: { maximum: 80 }
end
