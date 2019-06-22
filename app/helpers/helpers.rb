class Helpers

	self.current_user(session)
		user = User.find_by(session[:user_id])
	end

	self.is_logged_in?

	end

end