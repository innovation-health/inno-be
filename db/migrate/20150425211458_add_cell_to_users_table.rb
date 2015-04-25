class AddCellToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :cell, :string, default: ""
  end
end
