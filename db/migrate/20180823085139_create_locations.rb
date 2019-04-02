class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :lid
      t.string :name_es
      t.string :name_en
      t.string :house
      t.integer :hid
      t.string :location_type
      t.string :kingdom
      t.string :description

      t.timestamps
    end
  end
end
