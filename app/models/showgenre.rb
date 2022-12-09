class Showgenre < ApplicationRecord
    has_many :genre
    has_many :show
end
