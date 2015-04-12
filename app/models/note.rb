# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  stay_id    :integer
#  note       :text
#  created_at :datetime
#  updated_at :datetime
#  visit_id   :integer
#

class Note < ActiveRecord::Base
  belongs_to :patient
  belongs_to :visit
end
