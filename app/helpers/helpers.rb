class Helpers

	def self.current_user(session)
		user = User.find_by(id: session[:user_id])
	end

	def self.is_logged_in?(session)
		# !!session[:user_id]  #This works also
		user = User.find_by(id: session[:user_id])
		user ? true : false
	end

end