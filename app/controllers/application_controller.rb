class ApplicationController < ActionController::Base
	before_action :set_action_cable_identifier

	rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

  private

  	def set_action_cable_identifier
  		cookies.encrypted[:user_id] = current_user&.id
  	end
end
