# == Schema Information
#
# Table name: primary_teams
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  staff_id   :integer
#

class PrimaryTeam < ActiveRecord::Base
  belongs_to :patient
  belongs_to :staff
end
