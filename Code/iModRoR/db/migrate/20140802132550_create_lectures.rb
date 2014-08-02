class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.references :meter, index: true
      t.integer :value

      t.timestamps
    end
  end
end
