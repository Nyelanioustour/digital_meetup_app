class User < ApplicationRecord
    has_many :movies
    has_many :attendences
    has_many :posts

    has_secure_password

    def hosted
        self.movies.select do |movie|
            if movie.time < Time.now
                movie.title
            end 
        end 
    end

    def hosting
        self.movies.select do |movie| 
            if movie.time >= Time.now
                movie.title
            end
        end
    end

    def attended
        self.attendences.select do |attendence|
            if attendence.movie.time < Time.now 
                attendence.movie.title
            end
        end
    end

    def attending
        self.attendences.select do |attendence|
            if attendence.movie.time >= Time.now
                attendence.movie.title
            end
        end 
    end

end


