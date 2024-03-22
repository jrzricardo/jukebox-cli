require_relative "song"

class Jukebox
  def initialize 
    @tracks = []
  end

  def insert_coin
    loop do 
      puts "\n"
      puts "It's time for some jams! Add some of your favorite songs, and I will select one for you."
      puts "1. Add a track"
      puts "2. Show tracklist"
      puts "3. Song selector"
      puts "4. Exit"
      print "Please pick an option."

      action = gets.chomp.to_i

      case action
      when 1
        add_track
      when 2
        tracklist
      when 3
        song_selector
      when 4 
        puts "Thanks for listening, toodeloo "
      else
        puts "Huh? That wasn't an option."
      end
    end
  end


  private
  
  def add_track
    print "What's the name of the track?"
    track = gets.chomp
    print "Who plays it?"
    artist = gets.chomp
    @tracks << Song.new(track, artist)
    puts "Whoa, that's a solid tune. You have great taste!"
  end

  def tracklist
    @tracks.each do |song|
      puts song
    end
  end

  def song_selctor
    prints "Now playing: #{@tracks.sample}"
  end
end
