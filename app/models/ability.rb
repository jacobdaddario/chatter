# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
  	# Guest user instantiated if current_user returns nil
  	user ||= User.new

    can :index, Chatroom
    can :manage, Subscription

    if user.admin?
      can :manage, Chatroom
    end
  end
end
