require 'pry'

class Artist

  attr_accessor :name
  attr_reader :songs

  extend Findable   # Used for Class Methods
  extend Memorable::ClassMethods      # Used for Memorable Class Methods
  include Memorable::InstanceMethods  # used for Memorable Instance Methods
  include Paramable # Used for Instance Methods

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
