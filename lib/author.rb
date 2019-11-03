class Author 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def add_post(post)
    post.author = self #akes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
  end 
  
  def add_post_by_title(title) #takes in an argumentof a post title, 
    post = Post.new(title) #creates a new post with it 
    post.author = self #associates the post and author
  end 
  
  def self.post
Author.all.select {|post| post.author == self} #returns the total number of posts associated to all existing authors
end 

  