class Movie < ApplicationRecord
    belongs_to :user
    has_many :attendences
    has_many :posts
end
