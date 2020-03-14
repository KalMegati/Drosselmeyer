class Writer < ApplicationRecord
    has_many :characters
    has_many :locations
    has_many :factions
    has_many :settings

    has_secure_password

    validates_uniqueness_of :handle, :password_digest, :icon
    validates_presence_of :handle, :icon

end
