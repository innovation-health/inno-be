class CreatePrimaryTeamTable < ActiveRecord::Migration
  def change
    create_table :primary_team_tables do |t|
      t.integer :patient_id, index: true
      t.integer :staff_id, index: true
    end
  end
end
