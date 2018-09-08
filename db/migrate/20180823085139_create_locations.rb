class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :LID
      t.string :NAME_ES
      t.string :NAME_EN
      t.string :HOUSE
      t.integer :HID
      t.string :TYPE
      t.string :KINGDOM

      t.timestamps
    end
  end
end
