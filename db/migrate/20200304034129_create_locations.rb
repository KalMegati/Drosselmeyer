class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :blurb
      t.text :story
      t.string :image
      t.belongs_to :setting
      t.belongs_to :writer
      t.belongs_to :faction

      t.timestamps
    end
  end
end
