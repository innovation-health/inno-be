class AddDefaultToUserDepartment < ActiveRecord::Migration
  def change
    change_column :users, :department, :string, default: ""
  end
end
