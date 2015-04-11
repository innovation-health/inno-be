class RenameStayTable < ActiveRecord::Migration
  def change
    rename_table :stay, :stays
  end
end
