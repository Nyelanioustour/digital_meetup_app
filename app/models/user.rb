class User < ApplicationRecord
    has_many :movies
    has_many :attendences

    has_secure_password
end
