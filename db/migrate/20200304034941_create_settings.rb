class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.string :title
      t.string :genre
      t.string :high_concept
      t.string :story
      t.integer :aesthetic, default: nil
      t.belongs_to :writer

      t.timestamps
    end
  end
end