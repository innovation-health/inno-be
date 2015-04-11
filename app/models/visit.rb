class Visit < ActiveRecord::Base
  belongs_to :staff
  belongs_to :patient
end