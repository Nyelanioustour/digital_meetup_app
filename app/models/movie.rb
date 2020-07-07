class Movie < ApplicationRecord
    belongs_to :user
    has_many :attendences
    validates :title, presence: true
    validates :description, presence: true
    validates :time, presence: true
    validates :max_guests, presence: true
end
