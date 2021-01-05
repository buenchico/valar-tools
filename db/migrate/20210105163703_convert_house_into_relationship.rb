class ConvertHouseIntoRelationship < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :house, :string
    add_reference :users, :house
  end
end
