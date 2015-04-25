class CreateAlertTable < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.integer :staff_id
      t.integer :patient_id
      t.timestamps
    end
  end
end
