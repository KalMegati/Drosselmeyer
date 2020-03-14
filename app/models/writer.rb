class Writer < ApplicationRecord
    has_many :characters
    has_many :locations
    has_many :factions
    has_many :settings

    has_secure_password

    validates_uniqueness_of :handle, :password_digest, :icon
    validates_presence_of :handle

    validate :icon_chars, :icon_length
    validates_presence_of :icon


    def icon_chars #ensures that icon contains only capital letters and numbers
        unless icon.match(/[A-Z0-9]{3}/)
            errors.add(:icon, "must match required formatting")
        end
    end

    def icon_length #ensures that icon is exactly 3 characters long
        unless icon.length == 3
            errors.add(:icon, "must match required formatting")
        end
    end

end
