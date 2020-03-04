class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :blurb
      t.text :story
      t.string :image
      
      t.timestamps
    end
  end
end
