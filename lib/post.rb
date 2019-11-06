class Post 
  attr_accessor :title 
# Post @@all is a class variable set to an array 
  @@all = []
  
#Post #new pushes new instances into a class variable called @@all upon initialization
  def initialize(title)
    @title = title
    @@all << self
  end
  
# Post .all is a class method that returns an array of all post instances that have been created
  def self.all
    @@all
  end
  
  