require 'pry'
class Helpers
  def self.current_user(session)
    @user_id = User.find_by(id: session[:user_id])
    @user_id
  end
    
  def self.is_logged_in?(session)
    !!@user_id
  end
end