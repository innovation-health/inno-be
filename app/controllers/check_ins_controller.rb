class CheckInsController < ApplicationController
  before_action :set_parties

  def create

  end

  private
  def set_parties
    # @staff = Staff.where(params[:staff_id]).first
    # @pid = Stay.where(bed_id: params[:bed_id]).first.patient.id
    # @patient = Patient.grab_patient_associations(@pid)
    # @visits = @patient.visits.select {|visit| visit.staff.department == s.department}
    #   patient.staffs.each {|staff| staff.department == @staff.department}
    #   patient.questions.each {|q| q.resolved == false}

    # end
  end
  # .staffs.select {|staff| staff.department == s.department}
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