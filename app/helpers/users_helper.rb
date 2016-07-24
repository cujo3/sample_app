module UsersHelper
	def gravatar_for(user)
		clean_email = user.email.strip
		lower_case = clean_email.downcase
		hash = Digest::MD5::hexdigest(lower_case)
		gravatar_url = "https://www.gravatar.com/avatar/#{hash}"
		image_tag(gravatar_url, alt: user.name + "'s Profile Image", class: 'gravatar')
	end
end
