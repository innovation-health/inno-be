class AddDefaultValueQuestionsResolved < ActiveRecord::Migration
  def change
    change_column :questions, :resolved, :boolean, default: false
  end
end
