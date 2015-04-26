class CheckInsController < ApplicationController
  # before_action :authenticate_user_from_token!
  
  def create
    #params coming in from matt
    #Parameters: {"@personid"=>"770097295", "@facilityid"=>"3693CAFE1234", "@roomid"=>"11BADF00D111", "@statuscode"=>"201"}
    @visit = Visit.create(:staff_id => params[:@personid], :patient_id => 1)
    alert_list = Alert.list_cell_alerts(params[:@personid], params[:patient_id])
    alert_list.each {|cell| TwilioAlert.new(cell, params[:@personid], params[:patient_id]}.call unless alert_list.empty?
    render json: @visit, status: :ok
  end

  def index
    @recent_check_in = Visit.where(:created_at => Time.now - 1.day..Time.now)
    if @recent_check_in.exists?
      @recent_check_in = @recent_check_in.first  #just for the demo, incase there are more than one checkins
      render 'check_in/index.json.jbuilder', status: :ok
    else
      render json: false, status: :ok
    end
  end

  def alert
    @alert = Alert.create(alert_params)
    if @alert
      render json: @alert, message: "alert created", status: :ok
    else
      render json: @alert.errors.full_messages, status: :unprocessable_entty
    end
  end

  private

  def alert_params
    params.require(:alert).permit(:alerted_id, :alertee_id, :patient_id)
  end
end


#redirect_to patient_visit_department_path(patient_id: @visit.patient_id, id: @visit.staff_id)

# resp = HTTParty.post("http://54.90.20.225:8888/resource/auth/authentication", 
#   {
#     :body => {"accessCode" => "pu1234", "verifyCode" => "pu1234!!", "site" => "9E7A"}.to_json,
#     :headers => { 'Content-Type' => 'applicationa/json', 'Accept' => 'application/json'}
#   })
# {
#   "accessCode": "pu1234",
#   "verifyCode": "pu1234!!",
#   "site": "9E7A"
# }
# resp = HTTParty.post("http://54.90.20.225:8888/resource/auth/authentication", :body => {"accessCode" => "pu1234","verifyCode" => "pu1234!!", "site" => "9E7A"}.to_json,:headers => { 'Content-Type' => 'applicationa/json', 'Accept' => 'application/json'})