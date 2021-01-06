class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.belongs_to :sector, index: true
      t.belongs_to :house, index: true, optional: true

      t.integer :slots, default: 0
      t.integer :ic_slots, default: 0
      t.float :ic_bonus, default: 1
      t.integer :rp_slots, default: 0
      t.float :rp_bonus, default: 1
      t.integer :cp_slots, default: 0
      t.float :cp_bonus, default: 1
      t.integer :mc_slots, default: 0
      t.integer :unrest, default: 0
      t.float :efficiency, default: 1

      t.timestamps
    end
  end
end
