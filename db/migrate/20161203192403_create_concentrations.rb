class CreateConcentrations < ActiveRecord::Migration
  def change
    create_table :concentrations do |t|
      t.integer :concentration_level
      t.float :concentration_value
      t.datetime :datetime

      t.timestamps null: false
    end
  end
end
