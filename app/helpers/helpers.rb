class Helpers

  def self.current_user(user_id)
    id_num = user_id.values.join('').to_i
    @current_user = User.find(id_num)
    @current_user

  end

  def self.is_logged_in?(user_id)
    # binding.pry
    if @current_user.id == user_id.values.join('').to_i
      true
    else
      false
    end 

  end
end