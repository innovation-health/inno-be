class StaffController < ApplicationController
  # before_action :authenticate_from_user_token!
  def department

  end

  def show
    @staff = Staff.find(:id)
    render json: "staff/index.json.jbuilder", status: :ok
  end

  private
  

end