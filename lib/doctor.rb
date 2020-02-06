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
    @appointments = Appointment.all.map{|apt| apt.doctor == self}
    #binding.pry
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end 
  
  def patients 
    @patients = Appointment.all.map{|apt| return apt.patient if apt.doctor == self}
  end 
  
end