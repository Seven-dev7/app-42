module UserHelper
	def avatar_for(user, options = { size: 100 })
		size = options[:size]
		if user.avatar?
			image_tag user.avatar.url(:thumb), width: size, class: 'avatar-image'
		else
			image_tag "default-avatar.jpg",width: size, class: 'avatar-image'
		end
	end
end