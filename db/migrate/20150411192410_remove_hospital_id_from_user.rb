class RemoveHospitalIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :hospital_id
  end
end
