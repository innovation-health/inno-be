class AddIndexToAlerts < ActiveRecord::Migration
  def change
    add_index :alerts, [:alertee_id, :patient_id]
  end
end
