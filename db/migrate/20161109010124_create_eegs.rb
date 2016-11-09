class CreateEegs < ActiveRecord::Migration
  def change
    create_table :eegs do |t|
      t.string :event
      t.date :date

      t.timestamps null: false
    end
  end
end
