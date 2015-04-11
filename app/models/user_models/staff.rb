class Staff < User
  has_many :primary_teams
  has_many :patients, through: :primary_teams
  
  has_many :visits
  has_many :patients, through: :visits 
end