class DropTableStay < ActiveRecord::Migration
  def change
    drop_table :stays
  end
end
