class Entity < ApplicationRecord
    belongs_to :writer
    belongs_to :setting
end
