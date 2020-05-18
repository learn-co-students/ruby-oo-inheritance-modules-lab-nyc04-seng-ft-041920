require 'pry'

class Artist

  #using the extend keyword to make the class methods in the module Memorable usable in this class
  extend Memorable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  #class method, gives you the instance of an artist that matches the name that is passed in
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  #returns an array of all artists in the class
  def self.all
    @@artists
  end

  #empties the entire artist class array
  # def self.reset_all
  #   self.all.clear
  # end

  # #tells you how many artist instances are in the artist class array
  # def self.count
  #   self.all.count
  # end

  
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  #gsub method (in this particular case) will take all space occurrences and replace them with dashes
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
