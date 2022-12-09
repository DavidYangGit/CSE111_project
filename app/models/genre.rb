class Genre < ApplicationRecord
    belongs_to :moviegenre
    belongs_to :showgenre
end
