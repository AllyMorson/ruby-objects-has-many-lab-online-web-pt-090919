class Artist
  attr_accessor :name

  @@all = [] #keeps track of the many songs and is placed before initialize

def initialize(name) #initilized with a name arugmement 
    @name = name
    @@all << self #push all instances into array 
  end
  
def add_song(song) #add_song takes in an argument of a song 
  song.artist = self #associates that song with the artist by telling the song that it belongs to that artist
  end 
  
def add_song_by_name(name)  
    song = Song.new(name) #creates a new song with it
    song.artist = self #associates the song and artist by telling the song that it belongs to that artist
  end 
  
def songs
    Song.all.select {|song| song.artist == self}
  end

def self.song_count
    Song.all.count
  end
end
