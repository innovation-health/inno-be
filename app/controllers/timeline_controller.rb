class TimelineController < ApplicationController
  before_action :authenticate_from_user_token!
  before_action :set_patient_timeline, only: :index 

  def index
    if @patient
      render json: "timelines/index.json.jbuilder", status: :ok
    else
      render json: @patient.errors.full_messages, status: :not_found
    end
  end

  def show
  end


  private

  def set_patient_timeline
    @patient = Patient.grab_patient_associations(params[:id])
    @visits = patient.visits
    @questions = @visits.map(&:questions).flatten.map(&:unresolved)
    @notes = @visits.map(&:note).compact
  end

  def set_staff_swipe

  end


end

# Staff.create(email: "d@d.com", password: "d", title: "Physician", prefix: "Dr.", role: "Internist" , department: "test",first_name: "Bob", last_name: "Holben")
# Staff.create(email: "dd@d.com", password: "d", title: "Gastro", prefix: "Dr.", role: "Gastro" , department: "test1", first_name: "Susie", last_name: "Scalpal")
# Staff.create(email: "ddd@d.com", password: "d", title: "Physician", prefix: "Dr.", role: "Surgeon" , department: "test",first_name: "Sammy", last_name: "Shakeyhands")
# Staff.create(email: "dddd@d.com", password: "d", title: "Gastro", prefix: "Dr.", role: "Gastro" , department: "test1", first_name: "Dechant", last_name: "Dylan")
# Patient.create(email:"b@b.com", password: "b", title: "patient", first_name: "Brian", last_name: "Rossetti")