class CreateBlinks < ActiveRecord::Migration
  def change
    create_table :blinks do |t|
      t.string :event
      t.string :string
      t.datetime :datetime
      t.time :time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
