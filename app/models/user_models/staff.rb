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
#  title                  :string
#  first_name             :string
#  last_name              :string
#  role                   :string
#  department             :string
#

class Staff < User
  has_many :primary_teams
  has_many :patients, through: :primary_teams
  
  has_many :visits
  has_many :patients, through: :visits 

  
  def build_name
   self.prefix + " " + self.first_name + " " + self.last_name if self.prefix && self.first_name && self.last_name
   self.first_name + " " + self.last_name if self.first_name && self.last_name
  end
end
