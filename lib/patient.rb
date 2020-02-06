class Patient
  
  attr_accessor :name, :appointments, :doctors 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    self.save 
    @doctors = []
    @appointments = []
  end 
  
  def self.all 
    @@all
  end 
  
  def save
    @@all << self 
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end 
  
  def appointments 
    @appointments 
  end 
  
  def doctors 
    @doctors = Appointment.all.map{|apt| apt.doctor if apt.patient == self}
  end 
  
end 