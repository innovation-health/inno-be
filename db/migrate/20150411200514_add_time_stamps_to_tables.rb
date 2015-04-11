class AddTimeStampsToTables < ActiveRecord::Migration
  def change
    add_column(:notes, :created_at, :datetime)
    add_column(:notes, :updated_at, :datetime)

    add_column(:questions, :created_at, :datetime)
    add_column(:questions, :updated_at, :datetime)

    add_column(:stays, :created_at, :datetime)
    add_column(:stays, :updated_at, :datetime)

    add_column(:visits, :created_at, :datetime)
    add_column(:visits, :updated_at, :datetime)
  end
end
