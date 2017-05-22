module TopicsHelper

	def user_is_authorized_for_topic?
		current_user && current_user.admin?
	end
end
