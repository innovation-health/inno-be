class CreateStayTable < ActiveRecord::Migration
  def change
    create_table :stay do |t|
      t.integer :patient_id
    end
  end
end
