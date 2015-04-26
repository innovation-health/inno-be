class AlertJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    
  end

  def self.confirm_visit(staff_id, patient_id)
    @alert ||= Alert.where(staff_id: staff_id, patient_id: patient_id)

  end
end
