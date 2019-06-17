class Patient

    attr_accessor :name, :doctor, :date

    #The Patient class needs a @@all class variable that begins with an empty array.
    @@all = []

    #The patient is initialized with a name and saved in the @@all class variable array.
    def initialize(name)
      @name = name
      @@all << self
    end

    def new_appointment(doctor, date)
      Appointment.new(self, doctor, date="")
    end

    #The .all class method lists each patient in the @@all class variable.
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
