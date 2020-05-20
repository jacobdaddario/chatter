module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	identified_by :current_user

  	def connect
  		self.current_user = find_verified_user
  		logger.add_tags "ActionCable", current_user.email
  	end

  	private

  		def find_verified_user
  			# `find_by` is used since it returns nil if nothing is found, unlike `find`
  			if verified_user = env['warden'].user
  				verified_user
  			else
  				reject_unauthorized_connection
  			end
  		end
  end
end
