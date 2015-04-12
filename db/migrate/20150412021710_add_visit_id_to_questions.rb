class AddVisitIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :visit_id, :integer
  end
end
