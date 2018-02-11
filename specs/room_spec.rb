require('minitest/autorun')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < Minitest::Test

  def setup
    @room1 = Room.new("The Celine")
    @room2 = Room.new("The Rihanna")
    @room3 = Room.new("The Beyoncé")
  end

  def test_check_in_guest()
    @guest1 = Guest.new("Michaela", 100, "Rude Boy")
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guests.count)
  end

  def test_check_out_guest()
    @guest1 = Guest.new("Michaela", 100, "Rude Boy")
    @room1.remove_guest(@guest1)
    assert_equal(0, @room1.guests.count)
  end

  def test_add_song_to_room()
    @song3 = Song.new("Beyoncé", "Single Ladies")
    @room3.add_song(@song3)
    assert_equal("Single Ladies", @song3.title)
  end

  def test_room_full()
    @guest1 = Guest.new("Michaela", 100, "Rude Boy")
    @guest2 = Guest.new("Jussi", 30, "Irreplaceable")
    @guest3 = Guest.new("Claire", 50, "Single Ladies")

    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    assert_equal(true, @room1.room_full)
  end

  def test_fav_song_in_playlist
    @room3.add_guest(@guest3)
    @room3.add_song(@song3)
    @room3.add_song(@song2)

    assert_equal("Woohoo...That's my jam!!", @room3.fav_song_in_playlist)
  end

end #end of class
