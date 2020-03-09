class Character < Entity
    # set_table_name "characters"
    self.table_name=("characters")
    belongs_to :writer
    belongs_to :setting
    belongs_to :faction

    scope :of_type, ->(archetype) { where("archetype = ?", archetype) }

end