class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << @genre
        @@artists << @artist

    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each { |element| !genre_hash[element] ? genre_hash[element] = 1 : genre_hash[element] += 1 }
        genre_hash
      end

    def self.artist_count
        artist_hash = {}
        @@artists.each { |artist| !artist_hash[artist] ? artist_hash[artist] = 1 : artist_hash[artist] += 1 }
        artist_hash
    end




end