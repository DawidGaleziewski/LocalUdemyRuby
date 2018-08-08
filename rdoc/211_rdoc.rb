#use ruby comments above of what we are currently describing

#An album class that stores an array of songs
class Album
  include Enumerable

  #An Array object of songs
  attr_reader :songs

  #Create a new album instance
  def initialize
    @songs = []
  end

  #Add a song to the Album object's song array
  def add_song(song)
    songs << song
  end

  #Yield each in song in the album to the block
  def each
    song.each do |song|
      yield song
    end
  end
end

thriller = Album.new
thriller.add_song("Thriller")
thriller.add_song("Billie Jean")
puts thriller.songs
