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
    end

    def self.genre_count
        Hash[@@genres.uniq.zip @@genres.uniq.collect {|a| @@genres.count(a)}]
    end

    def self.artist_count
        Hash[@@artists.uniq.zip @@artists.uniq.collect {|a| @@artists.count(a)}]
    end

end