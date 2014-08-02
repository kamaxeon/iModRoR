class CreateMeterTypes < ActiveRecord::Migration
  def change
    create_table :meter_types do |t|
      t.string :name
      t.text :description
      t.string :unit
      t.integer :lecture_id
      t.integer :alarm_id

      t.timestamps
    end
  end
end
