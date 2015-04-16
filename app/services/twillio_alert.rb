class TwilioAlert

  def initialize(staff_waiting, staff_visiting, patient)
    @staff_waiting   ||= staff_waiting
    @staff_visiting  ||= staff_visiting
    @patient         ||= patient
  end

  def call
    send_text_message
  end

  def send_text_message
 
    twilio_sid   = ENV['account_sid']
    twilio_token = ENV['auth_token']
    twilio_phone = ENV['twillio_phone']
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone}",
      :to => @staff_waiting.cell,
      :body => "#{@staff_visiting.name} has stopped by #{@patient.name}'s room"
    )
  end
end