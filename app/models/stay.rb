class Stay < ActiveRecord::Base
  belongs_to :patient
  has_many :questions
  has_many :notes
end