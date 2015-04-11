class AddSTayToModels < ActiveRecord::Migration
  def change
    add_column :questions, :stay_id, :integer, index: true
  end
end
