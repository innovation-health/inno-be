# == Schema Information
#
# Table name: alerts
#
#  id         :integer          not null, primary key
#  alerted_id :integer
#  alertee_id :integer
#  patient_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Alert < ActiveRecord::Base
  belongs_to :patient
  belongs_to :alerted, class_name: "Staff", foreign_key: "staff_id"
  belongs_to :alertee, class_name: "Staff", foreign_key: "staff_id"

  validates_presence_of :alerted_id, :alertee_id, :patient_id

  scope :confirm_alert, -> (alertee_id, patient_id) {where alertee_id: alertee_id, patient_id: patient_id}

  def self.list_cell_alerts(staff_id, patient_id)
    alert_ary = Alert.confirm_alert(staff_id, patient_id).map(&:alerted_id)
    alert_ary.map {|staff_id| Staff.find staff_id}.map(&:cell)
  end

end
