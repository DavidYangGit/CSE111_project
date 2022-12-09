class Showactor < ApplicationRecord
    has_many :actor
    has_many :show
end
