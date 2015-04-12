class VisitSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :staff

  has_one  :staff
  has_one  :note
  has_many :questions

  def staff
    hsh = Hash.new
    hsh[:staff_id]   = object.staff.id
    hsh[:prefix]     = object.staff.prefix
    hsh[:first_name] = object.staff.first_name
    hsh[:last_name]  = object.staff.last_name
    hsh[:department] = object.staff.department
    hsh
  end

end
