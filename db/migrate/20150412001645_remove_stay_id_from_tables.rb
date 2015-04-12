class RemoveStayIdFromTables < ActiveRecord::Migration
  def change
    remove_column :questions, :stay_id
    add_column :questions, :visit_id, :integer, index: :true
    remove_column :notes, :stay_id
  end
end
