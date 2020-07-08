class Movie < ApplicationRecord
    belongs_to :user
    has_many :attendences
    has_many :posts
    validates :title, presence: true
    validates :description, presence: true
    validates :time, presence: true
    validates :max_guests, presence: true

    def self.get_sample
        self.all.sample
    end
end
