require "pry"

class Song

  attr_accessor :name, :artist, :genre

  @@count=0
  @@genres=[]
  @@artists=[]

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
     @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
    # result = []
    # @@artist.each do |item|
    #   if result.exclude?(item)
    #     result << item
    #   end
    # end
    # return result
  end

  def self.genre_count
    counts={}
    @@genres.each do |genre|
      if counts[genre] != nil
        counts[genre] += 1
      else 
        counts[genre] = 1
      end
    end
    return counts
  end
    
  def self.artist_count
    @@artists.tally
  end


end