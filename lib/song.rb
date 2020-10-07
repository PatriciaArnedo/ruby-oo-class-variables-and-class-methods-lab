
class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name,:artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        
        @@artists << self.artist
        @@count += 1
        @@genres << self.genre
    end
    
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        result = {}
        @@genres.each do |genre| 
            if !result.key?(genre)
                result[genre] = 0
            end
            result[genre] += 1
        end
        result
    end

    def self.artist_count
        result = {}
        @@artists.each do |artist| 
            if !result.key?(artist)
                result[artist] = 0
            end
            result[artist] += 1
        end
        result
        
    end



end