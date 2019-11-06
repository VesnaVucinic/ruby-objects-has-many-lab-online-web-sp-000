class Song
  attr_accessor :name, :artist
  
#Song #new pushes new instances into a class variable called @@all upon initialization
  @@all = []
  
# Song #new is initialized with an argument of a name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name if artist
  end
end
