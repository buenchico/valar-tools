class CreateDesigns < ActiveRecord::Migration[5.2]
  def change
    create_table :designs do |t|
      t.belongs_to :house

      t.string :name
      t.text :desc
      t.text :notes
      t.integer :size
      t.json :modules
      t.integer :sys_ftl
      t.integer :sys_engine
      t.integer :sys_sensors
      t.boolean :active, :default => false

      t.timestamps
    end
  end
end
