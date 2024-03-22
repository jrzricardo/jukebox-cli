require 'minitest/autorun'
require_relative '../song'
require_relative '../jukebox'

class TestApp < Minitest::Test
  def setup
    @jukebox = Jukebox.new
  end
  
  def test_tracklist_empty
    assert_output(/No tracks available/) { @jukebox.tracklist }
  end

end
