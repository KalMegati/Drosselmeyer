class Location < Entity
    self.table_name=("locations")
    belongs_to :writer
    belongs_to :setting
    belongs_to :faction

end
