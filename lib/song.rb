class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize (name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    #@@artists.push(artist) unless @@artists.include?(artist) # using unless to make sure we don't have duplicate artists
    @@artists << artist
    @@genres << genre
  end
  
  def name
    @name
  end
  
  def artist
    @artist
  end
  
  def genre
    @genre
  end
  
  def self.count
    @@count
  end
  
  
end