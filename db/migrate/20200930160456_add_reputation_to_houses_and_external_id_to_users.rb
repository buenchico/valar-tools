class AddReputationToHousesAndExternalIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :reputation, :integer
    add_column :users, :external_id, :integer
  end
end
