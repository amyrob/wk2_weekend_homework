class Guest

attr_reader :name, :wallet_balance

  def initialize(name, wallet_balance)
    @name = name
    @wallet_balance = wallet_balance
  end

  def pay_entry_fee(karaoke_bar)
      @wallet_balance -= karaoke_bar.entry_fee
    end
end #end of class
