
class VisitController < ApplicationController
  # before_action :authenticate_user_from_token!
  before_action :set_visit, only: [:question, :note]
  before_action :set_question, only: [:question_answered]

  def question
    @question = @visit.questions.create(question: params[:question], patient_id: @patient.id)
    if @question
      render "visit/question.json.jbuilder", status: :ok
    else
      render json: @question.errors.full_messages, status: :unprocessable_entity
    end
  end

  def question_answered
    render json: @question, status: :ok
  end

  def note
    @note = @visit.create_note(note: params[:note], patient_id: @patient.id)
    if @note
      render json: @note, status: :ok
    else
      render json: @note.errors.full_messages, status: :unprocessable_entity
    end
  end


  private

  def set_visit
    @visit = Visit.find params[:id]
    @patient = @visit.patient
  end

  def set_question
    @question = Question.find params[:id]
    @question.update_attributes(resolved: true)
  end

end