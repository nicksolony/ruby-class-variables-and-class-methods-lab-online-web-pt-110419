class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genres_count = {}
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  
  def initialize (name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    #@@artists.push(artist) unless @@artists.include?(artist) # using unless to make sure we don't have duplicate artists
    @@artists << artist
    @@genres << genre
    if @@genres_count.key?(genre)
      @@genres_count[genre] += 1
    else
      @@genres_count
    end
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