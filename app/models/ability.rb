# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
  	# Guest user instantiated if current_user returns nil
  	user ||= User.new

  	if user.persisted? 
	    can :index, Chatroom

	    if user.admin?
	      can :manage, Chatroom
	    end
	  end
  end
end
