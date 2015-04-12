class AddAttributesToTables < ActiveRecord::Migration
  def change
    rename_column :notes, :stay, :stay_id
    add_index :notes, :stay_id
    rename_column :notes, :patient, :patient_id
    add_index :notes, :patient_id

    add_index :visits, :staff_id
    add_index :visits, :patient_id
  end
end
