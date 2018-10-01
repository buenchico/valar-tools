class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :NAME
      t.string :DESCRIPTION
      t.integer :DIFFICULTY
      t.string :TIME

      t.timestamps
    end
  end
end
