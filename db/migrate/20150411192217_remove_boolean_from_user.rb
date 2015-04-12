class RemoveBooleanFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :primary_team
  end
end
