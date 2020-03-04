class Writer < ApplicationRecord
    has_many :characters
    has_many :locations
    has_many :settings
end
