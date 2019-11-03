class Post 
  attr_accessor :title , :author,
  @@all = [] 
  
  def inititalize(title)
    @@all << self 
  end 
  
  def self.all 
    posts.all.select {post
  