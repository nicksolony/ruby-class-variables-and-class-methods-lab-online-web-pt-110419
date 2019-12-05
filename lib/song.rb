class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
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
  
  def self.artist_count
    @@artist_count
  end
  
  
  
  def initialize (name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    
    if @@genre_count.key?(genre)          #check if genre key exist in genre_count hash
      @@genre_count[genre] += 1           #in case it does, update current genre_count
    else
      @@genre_count[genre] = 1            #otherwise add new genre key pair to the hash 
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