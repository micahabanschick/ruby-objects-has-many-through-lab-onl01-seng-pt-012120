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
    @appointments = Appointment.all.each{|apt| apt.doctor == self}
    #binding.pry
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end 
  
  def patients 
    @patients = Appointment.all.filter{|apt| return apt.patient if apt.doctor == self}
  end 
  
end