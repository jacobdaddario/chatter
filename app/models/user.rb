class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable

  has_many :subscriptions
  has_many :chatrooms, through: :subscriptions
  has_many :messages

  validates :authorization, inclusion: { in: [0, 1] }
  validates :username, presence: true, length: { maximum: 80 }, uniqueness: true

  def admin?
  	authorization == 1
  end

  def subscribe(chatroom)
  	chatrooms << chatroom
  end

  def unsubscribe(chatroom)
  	chatrooms.delete(chatroom)
  end

  def subscribed?(chatroom)
  	chatrooms.include?(chatroom)
  end
end
