class Post 
  attr_accessor :title 
# Post @@all is a class variable set to an array 
  @@all = []
  
#Post #new pushes new instances into a class variable called @@all upon initialization
  def initialize(title)
    @title = title
    @@all << self
  end
  
# 