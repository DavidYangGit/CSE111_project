class Moviegenre < ApplicationRecord
    has_many :genre
    has_many :movie
    #has_many :movies
end
