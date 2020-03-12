class Writer < ApplicationRecord
    has_many :characters
    has_many :locations
    has_many :factions
    has_many :settings

    has_secure_password

end
