# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime
#  updated_at             :datetime
#  authentication_token   :string
#  admin                  :boolean          default(FALSE)
#  type                   :string
#  prefix                 :string
#  title       pat           :string
#  first_name             :string
#  last_name              :string
#  role                   :string
#  department             :string
#

class Patient < User

  has_many :notes
  has_many :questions

  has_many :primary_team
  has_many :staffs, through: :primary_teams

  has_many :visits
  has_many :staffs, through: :visits


  def self.grab_patient_associations(id)
    Patient.includes(visits: [:staff, :note, :questions]).where(id: id).first
  end

  def primary_team_includes?(staff_id)
    binding.pry
    self.primary_team.map(&:staff_id).include? staff_id
  end

end
