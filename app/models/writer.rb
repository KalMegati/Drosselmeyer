class Writer < ApplicationRecord
    has_many :characters
    has_many :locations
    has_many :factions
    has_many :settings
end
