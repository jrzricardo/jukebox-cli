require_relative "song"

class Jukebox
  def initialize 
    @tracks = []
  end

  def insert_coin
    loop do 
      puts "\n"
      puts "It's time for some jams! Add some of your favorite songs, and I will select one for you. \n"
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
        puts "\n"
        puts "Thanks for listening, toodeloo!"
        break
      else
        puts"\n"
        puts "Huh!? That wasn't an option."
      end
    end
  end


  
  def add_track
    puts"\n"
    print "What's the name of the track? "
    
    track = gets.chomp
    
    puts "\n"
    print "Who plays it? "
    artist = gets.chomp
    @tracks << Song.new(track, artist)
    puts "\n"
    puts "Whoa, that's a solid tune. You have great taste!"
  end

  def tracklist
    if @tracks.empty?
      puts "\n"
      print "No tracks available. Please add some! \n"
    
    else
      @tracks.each do |song|
      puts "\n"
      puts song
      end
    end
  end

  def song_selector
    if @tracks.empty?
      puts "\n"
      print "No tracks available. Please add some! \n"
    else
    puts "\n"
    print "Now playing: #{@tracks.sample} \n"
    end
  end
end
