class CreateEegEvents < ActiveRecord::Migration
  def change
    create_table :eeg_events do |t|
      t.string :event
      t.date :date

      t.timestamps null: false
    end
  end
end
