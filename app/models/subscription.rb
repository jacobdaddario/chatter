class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  validates_presence_of :user_id, :chatroom_id
end
