class CreateVisitTable < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :staff_id
      t.integer :patient_id
      t.integer :hospital_id
    end
  end
end
