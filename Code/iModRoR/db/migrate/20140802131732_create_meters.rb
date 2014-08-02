class CreateMeters < ActiveRecord::Migration
  def change
    create_table :meters do |t|
      t.references :propertry, index: true
      t.references :meter_type, index: true
      t.integer :mbud_address
      t.boolean :sent_alert

      t.timestamps
    end
  end
end
