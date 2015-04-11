class DropHospitalTable < ActiveRecord::Migration
  def change
    drop_table :hospitals
  end
end
