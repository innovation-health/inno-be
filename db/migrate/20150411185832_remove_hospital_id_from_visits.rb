class RemoveHospitalIdFromVisits < ActiveRecord::Migration
  def change
    remove_column :visits, :hospital_id
  end
end
