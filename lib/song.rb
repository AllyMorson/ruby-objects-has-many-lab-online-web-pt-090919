class Song 
  attr_accessor :name , :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self #new pushes new instances into a class variable called @@all upon initialization
  end 
  
  def self.all 
    @@all 
  end 
end 
