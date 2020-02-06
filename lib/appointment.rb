class Appointment 
  
  attr_accessor :date, :patient, :doctor 
  
  @@all = []
  
  def initialize(date, doctor, patient)
    @date = date 
    @doctor = doctor 
    @patient = patient 
    self.save 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
  
end 