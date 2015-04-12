class AddHopitalIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hospital_id, :integer
  end
end
