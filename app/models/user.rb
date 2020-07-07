class User < ApplicationRecord
    has_many :movies
    has_many :attendences

    has_secure_password

    def hosted
        @user.movies.select do |movie|
            if movie.time < Time.now
                movie.title
            end 
        end 
    end

    def hosting
        @user.movies.each do |movie|
            movie.title
        end
    end

    def attended
        @user.attendences.select do |attendence|
            if attendence.movie.time < Time.now 
                attendence.movie.title
            end
        end
    end

    def attending
        @user.attendences.each do |attendence|
            if attendence.movie.time >= Time.now
                attendence.movie.title
            end
        end 
    end

end


