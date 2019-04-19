class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.integer :hid
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
