class AddReputationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :reputation, :integer
  end
end
