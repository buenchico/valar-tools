class AddBranchToFamilies < ActiveRecord::Migration[5.1]
  def change
    add_column :families, :branch, :string, default: "Elder"
  end
end
