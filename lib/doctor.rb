require 'pry'

class Doctor 
  
  attr_accessor :name, :appointments 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @appointments = []
    @patients = []
    self.save 
  end 
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self 
  end 
  
  def appointments 
    @appointments
    #binding.pry
  end 
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end 
  
  def patients 
    @patients
  end 
  
end