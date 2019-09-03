class CreateArmies < ActiveRecord::Migration[5.1]
  def change
    create_table(:armies, :primary_key => 'aid') do |t|
      t.string :visibility
      t.boolean :visible
      t.string :kingdom
      t.string :location
      t.string :lord
      t.string :name
      t.string :position
      t.string :mission
      t.string :status
      t.string :armytype
      t.integer :num
      t.integer :vet
      t.integer :armour
      t.integer :morale
      t.boolean :infantry
      t.boolean :cavalry
      t.boolean :marine
      t.string :boat
      t.boolean :flagship
      t.text :notes

      t.timestamps
    end
  end
end