require('minitest/autorun')
require_relative('../karaoke_bar')
require_relative('../guest')
require_relative('../room')

class KaraokeBarTest < Minitest::Test

  def setup
    @karaoke_bar = KaraokeBar.new("Diva's", 1000, 10)
  end

  def test_guest_pays_entry()
    assert_equal(1010, @karaoke_bar.guest_pays_entry())
  end

end
