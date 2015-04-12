class CheckInsController < ApplicationController
  before_action :set_parties

  def create

    #params coming in from matt
    #Parameters: {"@personid"=>"770097295", "@facilityid"=>"3693CAFE1234", "@roomid"=>"11BADF00D111", "@statuscode"=>"201"}
  @visit = Visit.new(:staff_id => params[:@personid], :patient_id => 97)
  @visit.save
  redirect_to patient_visit_department_path(patient_id: @visit.patient_id, id: @visit.staff_id)
  # render json: @visit, status: :ok
  end

  private
  def set_parties
    #  @staff = Staff.where(params[:staff_id]).first
    #  @pid = Stay.where(bed_id: params[:bed_id]).first.patient.id
    #  @patient = Patient.grab_patient_associations(@pid)
    #  @visits = @patient.visits.select {|visit| visit.staff.department == s.department}
    #  patient.staffs.each {|staff| staff.department == @staff.department}
    #  patient.questions.each {|q| q.resolved == false}
    # end
  end
end


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