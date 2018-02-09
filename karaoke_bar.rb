class KaraokeBar

  attr_reader :name, :entry_fee, :till_balance

  def initialize(name, till_balance, entry_fee)
    @name = name
    @till_balance = till_balance
    @entry_fee = entry_fee
    @rooms = []
  end


  def guest_pays_entry()
    @till_balance += @entry_fee
  end
end #end of class
