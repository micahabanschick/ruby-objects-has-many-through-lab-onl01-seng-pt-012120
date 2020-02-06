class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    self.save 
  end 
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self 
  end 
  
  def songs 
    @songs = Song.all.filter{|song| song.artist == self}
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    #@songs << song 
  end 
  
  def genres 
    @genres = Song.all.map{|song| song.genre if song.artist == self}
  end 
  
end