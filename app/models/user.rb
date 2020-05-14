class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable

  has_many :subscriptions
  has_many :chatrooms, through: :subscriptions

  validates :authorization, inclusion: { in: [0, 1] }

  def admin?
  	authorization == 1
  end 
end
