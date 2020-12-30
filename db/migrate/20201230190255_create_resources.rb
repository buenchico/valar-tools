class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.belongs_to :user, index: true

      t.integer :ic, default: 0
      t.integer :rp, default: 0
      t.integer :cp, default: 0

      t.timestamps
    end
  end
end
