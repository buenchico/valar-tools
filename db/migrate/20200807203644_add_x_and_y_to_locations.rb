class AddXAndYToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :x, :float
    add_column :locations, :y, :float
  end
end
