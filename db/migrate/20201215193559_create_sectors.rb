class CreateSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :sectors do |t|
      t.integer :q
      t.integer :r
      t.string :sector_type, default: 'empty'
      t.string :name
      t.text :desc
      t.text :notes

      t.timestamps
    end

    create_table :sector_houses do |t|
      t.belongs_to :house
      t.belongs_to :sector
      t.integer :info, default: 0
      t.text :notes

      t.timestamps
    end
  end
end
