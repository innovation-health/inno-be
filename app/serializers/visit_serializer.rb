class VisitSerializer < ActiveModel::Serializer
  attributes :visit

  # has_one  :staff
  # has_one  :note
  # has_many :questions

  def visit
    hsh   = Hash.new
    staff = object.staff
    hsh[:time]       = object.created_at
    hsh[:staff_id]   = staff.id
    p                = staff.prefix
    fn               = staff.first_name
    ln               = staff.last_name
    hsh[:name]       = staff.build_name(prefix: p, first_name: fn, last_name: ln )
    hsh[:role]       = staff.role
    hsh[:department] = staff.department
    hsh[:note]       = object.note
    hsh[:questions]  = object.questions
    hsh
  end

  def default_serializer_options
    {root: true}
  end

end
