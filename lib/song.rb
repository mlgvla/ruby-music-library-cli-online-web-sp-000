require 'pry'
class Song

  attr_accessor :name


  @@all = []

  def initialize(name, artist = nil)
    @name = name
    self.artist = artist if artist != nil
    save
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = Song.new(name)
    song
  end

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
    self.artist.add_song(self)
  end



end
