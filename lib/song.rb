class Song 
  
  
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self #new pushes new instances into a class variable called @@all upon initialization