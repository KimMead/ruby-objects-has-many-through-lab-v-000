class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor
      return "#{date}"
    end
  end

  def patients
    self.appointments.map do |appointment|
      appointment.patient
    end
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
end
