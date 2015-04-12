class CreateHospitalTable < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name, null: false
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
