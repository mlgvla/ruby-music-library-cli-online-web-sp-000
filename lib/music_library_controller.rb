require 'pry'

class MusicLibraryController

  attr_accessor :path

  def initialize(path = "./db/mp3s")
    @path = path
    MusicImporter.new(path).import
  end

  def call
    puts("Welcome to your music library!")
    puts("To list all of your songs, enter 'list songs'.")
    puts("To list all of the artists in your library, enter 'list artists'.")
    puts("To list all of the genres in your library, enter 'list genres'.")
    puts("To list all of the songs by a particular artist, enter 'list artist'.")
    puts("To list all of the songs of a particular genre, enter 'list genre'.")
    puts("To play a song, enter 'play song'.")
    puts("To quit, type 'exit'.")
    puts("What would you like to do?")

    input = gets.chomp

    case input
      when "list songs"
      when "list artists"
      when "list genres"
      when "list artist"
      when "list genre"
      when "play song"
      when "exit"
        exit
      else
        call
    end
  end

  # MusicLibraryController - CLI Methods

  def list_songs
    sorted_library = Song.all.sort_by  {|song| song.name}
    counter = 1
    sorted_library.each do |song|
      puts"#{counter}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
      counter += 1
    end
  end

  def list_artists
    sorted_library = Artist.all.sort_by  {|artist| artist.name}
    counter = 1
    sorted_library.each do |artist|
      puts"#{counter}. #{artist.name}"
      counter += 1
    end
  end

  def list_genres
    sorted_library = Genre.all.sort_by  {|genre| genre.name}
    counter = 1
    sorted_library.each do |genre|
      puts"#{counter}. #{genre.name}"
      counter += 1
    end
  end

  def list_songs_by_artist

  end

  def list_songs_by_genre

  end

  def play_song

  end
end
