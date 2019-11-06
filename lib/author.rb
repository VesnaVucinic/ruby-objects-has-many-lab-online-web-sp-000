class Author 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
 
 # Author #add_post takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
  def add_post(post)
    post.author = self
  end
  
  
  