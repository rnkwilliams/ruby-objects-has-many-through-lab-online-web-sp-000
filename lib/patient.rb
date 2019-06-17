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

    #The #appointments instance method iterates through all appointments and finds the appointments that belong to that patient.
    def appointments
      Appointment.all.select do |a|
        a.patient == self
    end
  end

    #Patient class needs an instance method, #doctors, that iterates over the patient's appointments
    #and collects the doctor that belongs to each appointment.
    def doctors
      self.appointments.collect do |a|
        a.doctor
      end
    end
end
