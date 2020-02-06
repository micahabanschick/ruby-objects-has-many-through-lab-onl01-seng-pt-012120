class Genre 
  
  attr_accessor :name, :songs, :artists 
  
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
  
  def songs 
    @songs = Song.all.filter{|song| song.genre == self}
  end 
  
  def artists 
    @artists = Song.all.map{|song| song.artist if song.genre == self}
  end 
  
end 