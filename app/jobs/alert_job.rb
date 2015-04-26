class AlertJob < ActiveJob::Base
  queue_as :default

  def perform(staff_id, patient_id)
    alert_list = Alert.list_alerts(staff_id, patient_id)
    cell_list = alert_list.map(&:cell)
    cell_list.each {|cell| TwilioAlert.new(cell, staff_id, patient_id}.call unless cell_list.empty?
    DestroyAlerts.set(2.days).perform_later(alert_list)
  end

end
