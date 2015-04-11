class Note < ActiveRecord::Base
  belongs_to :patient
  belongs_to :stay
end