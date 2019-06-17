class Artist
  attr_accessor :name, :artist, :genre

  #The Artist class needs a class variable @@all that begins as an empty array
  @@all = []

  #An artist is initialized with a name and is saved in the @@all array.
  def initialize(name)
    @name = name
    @@all << self
  end

  #The #new_song instance method takes in an argument of a name and genre to create a new song. The song knows that it belongs to the artist.
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  #The #songs instance method iterates through all songs and finds the songs that belong to that artist.
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  #The #genres instance method iterates over that artist's songs and collects the genre of each song.
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

  #The .all method lists each artist that is stored in the @@all class variable
  def self.all
    @@all
  end
end
