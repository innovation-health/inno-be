class AddAttributesToUserTable < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :primary_team, :boolean
    add_column :users, :type, :string
    add_column :users, :prefix, :string
    add_column :users, :title, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :role, :string
  end
end
