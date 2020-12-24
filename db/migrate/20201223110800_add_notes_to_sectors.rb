class AddNotesToSectors < ActiveRecord::Migration[5.1]
  def change
    add_column :sectors, :notes, :text
    add_column :sector_users, :notes, :text
  end
end
