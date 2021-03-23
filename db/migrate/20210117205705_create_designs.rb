class CreateDesigns < ActiveRecord::Migration[5.2]
  def change
    create_table :designs do |t|
      t.belongs_to :house
      
      t.string :name
      t.text :desc
      t.text :notes
      t.integer :size

      t.timestamps
    end
  end
end
