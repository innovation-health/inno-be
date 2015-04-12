class RemoveStaffIdFromNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :staff_id
  end
end
