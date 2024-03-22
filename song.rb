class Song
  attr_accessor :track, :artist

  def initialize(track, artist)
    @track = track
    @artist = artist
  end

  def to_s
    "#{track} by #{artist}"
  end
end
