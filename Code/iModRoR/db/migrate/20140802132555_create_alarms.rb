class CreateAlarms < ActiveRecord::Migration
  def change
    create_table :alarms do |t|
      t.references :meter, index: true
      t.integer :value

      t.timestamps
    end
  end
end
