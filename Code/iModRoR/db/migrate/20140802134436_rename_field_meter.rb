class RenameFieldMeter < ActiveRecord::Migration
  def up
    rename_column :meters, :mbud_address, :mbus_address
  end
  def down
    rename_column :meters, :mbus_address, :mbud_address
  end
end
