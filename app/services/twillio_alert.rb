class TwilioAlert

  def initialize()
  end

  def call
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]
 
    twilio_sid   = ENV['account_sid']
    twilio_token = ENV['auth_token']
    twilio_phone = ENV['twillio_phone']
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone}",
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
  end
end