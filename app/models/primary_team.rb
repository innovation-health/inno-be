class PrimaryTeam < ActiveRecord::Base
  belongs_to :patient
  belongs_to :staff
end