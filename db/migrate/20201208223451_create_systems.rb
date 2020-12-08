class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.integer :slots, default: 0
      t.integer :ic, default: 0
      t.integer :rp, default: 0
      t.integer :cp, default: 0
      t.string :traits
      t.text :desc
      t.integer :x, default: 0
      t.integer :z, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
