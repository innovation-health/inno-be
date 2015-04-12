class AddNotesToVisits < ActiveRecord::Migration
  def change
    add_column :notes, :visit_id, :integer, index: true
  end
end
