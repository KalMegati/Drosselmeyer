class Faction < Entity
    # belongs_to :writer
    # belongs_to :setting
    has_many :characters
    has_many :locations

    def assets
        self.characters + self.locations
    end

end
