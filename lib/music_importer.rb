require 'pry'

class MusicImporter

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files
    Dir.new(@path).entries.select {|song| song.end_with?(".mp3")}
  end

end
