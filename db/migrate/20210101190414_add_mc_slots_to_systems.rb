class AddMcSlotsToSystems < ActiveRecord::Migration[5.2]
  def change
    add_column :systems, :mc_slots, :integer, default: 0
  end
end
