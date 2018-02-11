require('minitest/autorun')
require_relative('../guest')
require_relative('../room')
require_relative('../karaoke_bar')


class GuestTest < Minitest::Test

  def setup

    @guest1 = Guest.new("Amy", 100, "Halo")
    @guest2 = Guest.new("Claire", 50, "Single Ladies")

  end

  def test_pay_entry_fee()
    @guest3 = Guest.new("Brodie", 50)
    @karaoke_bar1 = KaraokeBar.new("Divas", 0, 10)
    remaining_balance = @guest3.pay_entry_fee(@karaoke_bar1)
    assert_equal(40, remaining_balance)
  end
end #end of class
