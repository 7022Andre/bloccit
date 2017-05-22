class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	include SessionsHelper

	def require_sign_in
		unless current_user
			flash[:alert] = "Please login first."
			redirect_to new_session_path
		end
	end
end
