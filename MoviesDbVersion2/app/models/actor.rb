class Actor < ApplicationRecord
    belongs_to :movieactor
    belongs_to :showactor
end
