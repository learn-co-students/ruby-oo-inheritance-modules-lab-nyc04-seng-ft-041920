require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  extend Findable   # Used for Class Methods
  extend Memorable::ClassMethods      # Used for Memorable Class Methods
  include Memorable::InstanceMethods  # used for Memorable Instance Methods
  include Paramable # Used for Instance Methods

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
