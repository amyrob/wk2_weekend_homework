class Room
  attr_reader :room_name, :guests, :playlist, :room_max_capacity
  def initialize(room_name)
    @room_name = room_name
    @guests = []
    @playlist = []
    @room_max_capacity = 3
  end

  def add_guest(guest)
    @guests.push(guest)
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @playlist.push(song)
  end

  def room_full
    return @guests.count >= room_max_capacity
  end

  def fav_song_in_playlist
    playlist.find { |song| @fav_song }
    return  "Woohoo...That's my jam!!"
  end

end #end of class
