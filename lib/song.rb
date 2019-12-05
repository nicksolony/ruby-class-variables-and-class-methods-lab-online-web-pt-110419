class Song
  
  @@count = 0
  @@artists = []
  
  def initialize (name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist) unless @@artists.include?(artist)
    #@@artists << artist
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
  
  
end