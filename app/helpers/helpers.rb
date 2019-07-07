
class Helpers
  def self.current_user(session)
    @user = User.find_by_id(session[:user_id])
  end

  def self.is_logged_in?(session)
    !!session[:user_id] # integer or nil

    # # !! Double bang will ask the question is_it_truthy?
    # is_it_truthy?(nil) # True
    # !!2 # True
    # !!nil # False
  end
end
