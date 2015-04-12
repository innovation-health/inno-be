class CreateNotesTable < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :patient
      t.integer :stay
      t.text    :note
    end
  end
end
