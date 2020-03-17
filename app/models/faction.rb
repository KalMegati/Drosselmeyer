class Faction < Entity
    self.table_name=("factions")
    belongs_to :writer
    belongs_to :setting
    has_many :characters
    has_many :locations

    validates_presence_of :name, :blurb
    validates_uniqueness_of :name, :blurb

    def assets
        self.characters + self.locations
    end

end
