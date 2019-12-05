class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genre_count
  end
  
  
  def initialize (name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    #@@artists.push(artist) unless @@artists.include?(artist) # using unless to make sure we don't have duplicate artists
    @@artists << artist
    @@genres << genre
    if @@genre_count.key?(genre)
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
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