class Post
  attr_accessor :title, :author
 
  @@all = []
  
   def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all 
    @@all # Post .all is a class method that returns an array of all post instances that have been created
  end 
  
  def author_name
    author.name if author
  end 
end 
  