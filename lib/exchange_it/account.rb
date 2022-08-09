module ExchangeIt
  class Account
    include ExchangeIt::Utils::Uid
    
    attr_reader :uid, :balance

    def initialize(user)
      @uid = hash user.name, user.surname
      @balance = 0
    end
  end
end
