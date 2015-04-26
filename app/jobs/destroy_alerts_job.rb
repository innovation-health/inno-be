class DestroyAlertsJob < ActiveJob::Base
  queue_as :default

  def perform(alerts)
    alerts.each {|alert| alert.destroy} unless alert_list.empty?
  end
end
