class RemoveFieldHouseFromLocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :house, :string
    remove_column :locations, :hid, :integer
  end
end
