require('minitest/autorun')
require_relative('../song')
require_relative('../room')
require_relative('../guest')

class SongTest < Minitest::Test

  def setup

    @song1 = Song.new("Rihanna", "Rude Boy")
    @song2 = Song.new("Beyoncé", "Halo")
    @song3 = Song.new("Beyoncé", "Single Ladies")

  end

  def test_song_available
    assert_equal("Rude Boy", @song1.title)
  end

end #end of class
