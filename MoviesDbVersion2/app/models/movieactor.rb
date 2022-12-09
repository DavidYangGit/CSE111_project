class Movieactor < ApplicationRecord
    has_many :actor
    has_many :movie
end
