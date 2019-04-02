class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :difficulty
      t.string :time

      t.timestamps
    end
  end
end
