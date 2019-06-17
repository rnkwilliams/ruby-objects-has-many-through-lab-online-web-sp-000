class Doctor
  attr_accessor :name, :date, :patient

  #The Doctor class needs a class variable @@all that begins as an empty array
  @@all = []

  #A doctor is initialized with a name and is saved in the @@all array.
  def initialize(name)
    @name = name
    @@all << self
  end

  #The #new_appointment instance method takes in an argument of a class and date to create a new appointment. The appointment knows that it belongs to the doctor.
  def new_appointment(patient, date)
    Appointment.new(patient, self, date="")
  end

  #The #appointments instance method iterates through all appointments and finds the patients that belong to that doctor.
  def appointments
    Appointment.all.select do |a|
      a.doctor == self
    end
  end

  #The #patients instance method iterates over a specific doctor's appointments and collects the patient of each appointment.
  def patients
    self.appointments.collect do |a|
      a.patient
    end
  end

  #The .all method lists each doctor that is stored in the @@all class variable
  def self.all
    @@all
  end
end
