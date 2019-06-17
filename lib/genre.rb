class Genre
  attr_accessor :name, :genre
  attr_reader :song

  #The Genre class needs a @@all class variable that begins with an empty array.
  @@all = []

  #The genre is initialized with a name and saved in the @@all class variable array.
  def initialize(name)
    @name = name
    @@all << self
  end

  #The .all class method lists each song in the @@all class variable.
  def self.all
    @@all
  end

  #The #songs instance method iterates through all songs and finds the songs that belong to that genre.
  def songs
    Song.all
  end

  #Genre class needs an instance method, #artists, that iterates over the genre's
  #collection of songs and collects the artist that owns each song.
  def artists
    Song.all.collect do |song|
      song.artist
    end
  end
end
