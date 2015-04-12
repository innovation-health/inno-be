class AddBedToStay < ActiveRecord::Migration
  def change
    add_column :stays, :bed, :integer
  end
end
