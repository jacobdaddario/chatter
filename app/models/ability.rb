# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :index, Chatroom

    if user.admin?
      can :manage, Chatroom
    end
  end
end
