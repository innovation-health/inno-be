# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  question   :string
#  resolved   :boolean
#  patient_id :integer
#  created_at :datetime
#  updated_at :datetime
#  visit_id   :integer
#


class Question < ActiveRecord::Base
  belongs_to :patient
  belongs_to :visit

  def unresolved?
    self if self.resolved == false
  end
end
