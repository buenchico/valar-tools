class AddLocationToFamilies < ActiveRecord::Migration[5.1]
  def change
    add_reference :locations, :family
  end
end
