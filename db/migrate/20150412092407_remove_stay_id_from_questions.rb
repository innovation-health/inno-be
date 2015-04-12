class RemoveStayIdFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :stay_id
  end
end
