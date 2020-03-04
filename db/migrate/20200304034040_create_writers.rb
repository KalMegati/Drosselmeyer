class CreateWriters < ActiveRecord::Migration[6.0]
  def change
    create_table :writers do |t|
      t.string :handle
      t.string :password
      t.string :icon
      t.integer :aesthetic, default: nil

      t.timestamps
    end
  end
end
