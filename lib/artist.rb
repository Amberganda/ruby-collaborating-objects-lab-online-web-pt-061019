class Artist

    attr_accessor :name

<<<<<<< HEAD
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        song = @@all.detect {|artist| artist.name == name}
        if song != nil
            return song
        else
            Artist.new(name)
        end
    end

    def print_songs
        self.songs.each do |song|
            puts song.name
        end
    end
=======
    def initialize(name)
        @name = name
    end

    def self.all


    end

>>>>>>> 237e83b0c96bc6e17aa807cd2f63d5fa4823b566

end
