class Post 
  attr_accessor :title , :author,
  @@all = [] 
  
  def inititalize(title)
    @@all << self 
  end 
  
  def self.all 
    Posts.all.select {|post| post.title == self} 
  