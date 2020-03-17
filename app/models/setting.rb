class Setting < ApplicationRecord
    belongs_to :writer
    has_many :characters
    has_many :locations
    has_many :factions
    has_many :confidants, through: :locations, source: :writer
    has_many :companions, through: :characters, source: :writer
    has_many :collaborators, through: :factions, source: :writer

    validates_uniqueness_of :title, :high_concept
    validates_presence_of :title, :high_concept, :genre

    accepts_nested_attributes_for :factions



    def cowriters
        collab = self.confidants + self.companions + self.collaborators
        collab.uniq.sort_by{|writer|writer.handle}
    end
end
