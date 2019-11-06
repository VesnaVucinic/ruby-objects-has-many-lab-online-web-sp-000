class Artist
  attr_accessor :name

# Artist #songs has many songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
#Artist #add_song takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist#
  def add_song(song)
    song.artist = self
  end
  
#Artist #add_song_by_name takes in an argument of a song name, creates a new song with it and associates the song and artist
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.count
  end

