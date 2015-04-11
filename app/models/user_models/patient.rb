class Patient < User
  # has_many :stays
  # has_many :questions, through: :stays
  # has_many :notes, through: :stays  

  has_many :stays
  has_many :notes
  has_many :questions

  has_many :primary_team
  has_many :staffs, through: :primary_teams

  has_many :visits
  has_many :staffs, through: :visits
end