class Song

    attr_accessor :name, :artist, :genre


    @@count = 0

    @@genres = []

    @@artists = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1

        @@genres.push(genre)
        @@artists.push(artist)
        
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
        genre_counter = {}
        @@genres.each do |genre|
            if genre_counter[genre]
                genre_counter[genre] += 1
            else
                genre_counter[genre] = 1
            end
            
        end
       puts genre_counter
       genre_counter
    end
    
    def self.artist_count
        artist_counter = {}
        @@artists.each do |artist|
            if artist_counter[artist]
                artist_counter[artist] += 1
            else
                artist_counter[artist] = 1
            end
            
        end
       puts artist_counter
       artist_counter
    end


end