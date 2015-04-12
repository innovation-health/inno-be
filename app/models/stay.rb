# == Schema Information
#
# Table name: stays
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Stay < ActiveRecord::Base
  belongs_to :patient
  has_many :questions
  has_many :notes
end
