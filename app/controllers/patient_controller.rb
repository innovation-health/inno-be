class PatientController < ApplicationController
  before_action :authenticate_user_from_token!
  before_action :set_patient_timeline, only: :timeline
  before_action :set_department_timeline, only: :visit_department

  def timeline
    if !!@patient
      render "patient/timeline.json.jbuilder", status: :ok
    else
      render json: @patient.errors.full_messages, status: :not_found
    end
  end

  def visit_department
    if !!@patient
      render "patient/visit_department.json.jbuilder", status: :ok
    else
      render json: @patient.errors.full_messages, status: :not_found
    end
  end
 
  private

  def set_patient_timeline
    @patient = Patient.grab_patient_associations(params[:id])
    @visits = @patient.visits
  end

  def set_department_timeline
    @patient = Patient.grab_patient_associations(params[:patient_id])
    @staff = Staff.find params[:id]
    @current_visit = @patient.visits[-1]
    @unresolved = @patient.visits.map(&:questions).flatten.map(&:unresolved?).compact
    @department_visits = @patient.visits.select {|v| v.department_visit(@staff)}
    @resolved = @patient.visits.map(&:questions).flatten.reject(&:unresolved?).compact
  end
