class Setting < ApplicationRecord
    belongs_to :writer
    has_many :characters
    has_many :locations
    has_many :factions
    has_many :confidants, through: :locations, source: :writers
    has_many :companions, through: :characters, sorce: writers
    has_many :collaborators, through: :factions, source: writers

    def cowriters
        collab = self.confidants + self.companions + self.collaborators
        collab.uniq.sort_by{|writer|writer.handle}
    end
end
