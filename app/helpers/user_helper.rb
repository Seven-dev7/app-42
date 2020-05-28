module UserHelper
	def avatar_for(user, options = { size: 200 })
		size = options[:size]
		if user.avatar?
			image_tag user.avatar.url(:thumb), width: size
		else
			image_tag "default-avatar.jpg", width: size
		end
	end
end