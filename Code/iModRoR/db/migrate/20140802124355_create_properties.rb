class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :floor
      t.string :number
      t.string :letter
      t.string :stair
      t.string :portal

      t.timestamps
    end
  end
end
