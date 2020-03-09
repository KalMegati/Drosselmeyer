class Character < Entity
    # set_table_name "characters"
    self.table_name=("characters")
    belongs_to :writer
    belongs_to :setting, optional: true
    belongs_to :faction, optional: true

    scope :of_type, ->(archetype) { where("archetype = ?", archetype) }

end