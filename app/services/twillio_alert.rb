class TwilioAlert

  def initialize(staff_cell, staff_id, patient_id)
    @staff_alerted_cell  ||= staff_cell
    @staff_visiting      ||= Staff.find staff_id
    @patient             ||= Patient.find patient_id
  end

  def call
    send_text_message
  end

  def send_text_message
 
    twilio_sid   = ENV['twilio_sid']
    twilio_token = ENV['twilio_auth_token']
    twilio_phone = ENV['twillio_phone']
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
      @twilio_client.account.messages.create(
      :from => "+1#{twilio_phone}",
      :to => @staff_waiting.cell,
      :body => "#{@staff_visiting.name} has stopped by #{@patient.name}'s room"
    )
  end
end