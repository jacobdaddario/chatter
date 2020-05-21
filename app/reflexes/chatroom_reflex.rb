# frozen_string_literal: true

class ChatroomReflex < ApplicationReflex
  # Add Reflex methods in this file.
  #
  # All Reflex instances expose the following properties:
  #
  #   - connection - the ActionCable connection
  #   - channel - the ActionCable channel
  #   - request - an ActionDispatch::Request proxy for the socket connection
  #   - session - the ActionDispatch::Session store for the current visitor
  #   - url - the URL of the page that triggered the reflex
  #   - element - a Hash like object that represents the HTML element that triggered the reflex
  #
  # Example:
  #
  #   def example(argument=true)
  #     # Your logic here...
  #     # Any declared instance variables will be made available to the Rails controller and view.
  #   end
  #
  # Learn more at: https://docs.stimulusreflex.com
  delegate :current_user, to: :connection

  def join
    @active_chatroom = Chatroom.find_by(id: element.dataset[:id])

    if current_user.subscribed?(@active_chatroom)
      @active_chatroom
    else
      @active_chatroom = nil
      flash[:alert] = "You must be subscribed to #{chatroom.name} to view it."
    end
  end
end
