class Song
  attr_accessor :name, :artist, :genre

  #The Song class needs a @@all class variable that begins with an empty array.
  @@all = []

  #The song is initialized with a name, artist, and a genre, and saved in the @@all class variable array.
  def initialize(name="", artist="", genre="")
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  #The .all class method lists each song in the @@all class variable.
  def self.all
    @@all
  end
end
