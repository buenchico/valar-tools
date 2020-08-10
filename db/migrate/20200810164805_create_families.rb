class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.integer :fid
      t.string :name
      t.string :lord
      t.string :members

      t.timestamps
    end
  end
end
