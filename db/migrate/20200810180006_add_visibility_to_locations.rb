class AddVisibilityToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :visibility, :integer, default: 1
  end
end
