class User < ApplicationRecord
    has_many :movies
    has_many :attendences
    has_many :posts

    has_secure_password
    validates :name, uniqueness: true

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

    def posts_for_hosted_events
      post_array = []
      self.hosted.each{|movie| movie.posts.each{|post| post_array << post}}
      return post_array
    end

    def avg_rating
        if self.posts_for_hosted_events.count != 0
        self.posts_for_hosted_events.map{|post| post.rating}.sum/self.posts_for_hosted_events.count
        else 
            return "unavailable"
        end
    end
    
    def total_ratings
        post_array = []
        self.movies.each{|movie| movie.posts.each{|post| post_array << post}}
        return post_array.count
    end

end


