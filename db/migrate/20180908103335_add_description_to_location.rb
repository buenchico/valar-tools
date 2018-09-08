class AddDescriptionToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :DESCRIPTION, :string
  end
end
