class PatientController < ApplicationController
  before_action :authenticate_user_from_token!
  before_action :set_patient_timeline, only: :show

  def show
    if !!@patient
      render json: @visits, each_serializer: VisitSerializer, status: :ok
    else
      render json: @patient.errors.full_messages, status: :not_found
    end
  end


  private

  def set_patient_timeline
    @patient = Patient.grab_patient_associations(params[:id])
    @visits = @patient.visits
    # @questions = @visits.map(&:questions).flatten.map(&:unresolved?)
    # @notes = @visits.map(&:note).compact
  end

end