class CreateAlertTable < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.integer :alerted_id, index: true
      t.integer :alertee_id
      t.integer :patient_id
      t.timestamps

    end
  end
end
