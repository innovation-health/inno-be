# == Schema Information
#
# Table name: visits
#
#  id         :integer          not null, primary key
#  staff_id   :integer
#  patient_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Visit < ActiveRecord::Base
  belongs_to :staff
  belongs_to :patient
  has_one    :note
  has_many   :questions

  def department_visit(staff)
    self.staff.department == staff.department
  end
end