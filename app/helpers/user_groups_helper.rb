module UserGroupsHelper

	def get_user(id)
		user = User.find_by_id(id)
    user.name if user.present?
	end
end
