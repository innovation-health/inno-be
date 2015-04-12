class RemoveStayFromNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :stay_id
  end
end
