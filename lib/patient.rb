class Patient
  
  attr_accessor :name, :appointments, :doctors 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    self.save 
  end 
  
  def self.all 
    @@all
  end 
  
  def save
    @@all << self 
  end 
  
  def new_appointment(doctor, date)
    apt = Appointment.new(date, doctor, self)
  end 
  
  def appointments 
    @appointments = Appointment.all.filter{|apt| apt.patient == self}
  end 
  
  def doctors 
    @doctors = Appointment.all.map{|apt| apt.doctor if apt.patient == self}
  end 
  
end 