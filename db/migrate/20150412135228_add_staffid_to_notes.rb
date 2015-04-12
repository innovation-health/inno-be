class AddStaffidToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :staff_id, :integer, index: true
  end
end
