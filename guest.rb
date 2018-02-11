class Guest

attr_reader :name, :wallet_balance, :fav_song

  def initialize(name, wallet_balance, fav_song)
    @name = name
    @wallet_balance = wallet_balance
    @fav_song = fav_song
  end

  def pay_entry_fee(karaoke_bar)
      @wallet_balance -= karaoke_bar.entry_fee
    end

end #end of class
