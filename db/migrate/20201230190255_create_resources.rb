class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.belongs_to :house, index: true

      t.integer :ic, default: 0
      t.integer :rp, default: 0
      t.integer :cp, default: 0
      t.float :ic_bonus, default: 1
      t.float :rp_bonus, default: 1
      t.float :cp_bonus, default: 1
      t.float :efficiency, default: 1

      t.timestamps
    end
  end
end
