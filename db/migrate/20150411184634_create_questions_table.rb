class CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions_tables do |t|
      t.string :question
      t.boolean :resolved
    end
  end
end
