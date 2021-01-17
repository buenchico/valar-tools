class CreateTechs < ActiveRecord::Migration[5.2]
  def change
    create_table :techs do |t|
      t.belongs_to :house

      t.string :name
      t.string :tech_type
      t.integer :lvl
      t.text :desc
      t.text :notes      

      t.timestamps
    end
  end
end
