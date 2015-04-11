class AddAssociationsToQuestionTable < ActiveRecord::Migration
  def change
    rename_table :questions_tables, :questions
    add_column :questions, :patient_id, :integer, index: true
  end
end
