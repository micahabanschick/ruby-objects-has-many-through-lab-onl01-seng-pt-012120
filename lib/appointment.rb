class Appointment 
  
  attr_accessor :date, :patient, :doctor 
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date 
    @doctor = doctor 
    @patient = patient 
    doctor.appointments << self 
    patient.appointments << self
    self.save 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
  
end 