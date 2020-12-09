class CreateGamesAndTools < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :title
      t.string :icon
      t.boolean :active, default: false

      t.timestamps
    end

    create_table :tools do |t|
      t.string :name
      t.string :title
      t.string :short_title
      t.string :path
      t.string :icon
      t.boolean :master, default: false
      t.integer :sort, default: 0
      t.boolean :active, default: false

      t.timestamps
    end

    create_table :games_tools, id: false do |t|
      t.belongs_to :game
      t.belongs_to :tool
    end
  end
end
