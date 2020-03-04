class CreateFactions < ActiveRecord::Migration[6.0]
  def change
    create_table :factions do |t|
      t.string :name
      t.string :blurb
      t.text :story
      t.string :image
      t.belongs_to :setting
      t.belongs_to :writer
      
      t.timestamps
    end
  end
end
