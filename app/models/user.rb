class User
  attr_accessor :username, :password, :balance

    def initialize(username, password, balance)
      @username = username
      @password = password
      @balance = balance
    end

    def save
      self.class.all << self
    end

    def self.create
      user = self.new
      user.save
      user
    end
end
