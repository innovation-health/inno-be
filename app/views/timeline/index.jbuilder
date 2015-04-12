json.array @visits do |visit|
	json.created_at visit.created_at
	json.prefix     visit.staff.prefix
	json.first_name visit.staff.first_name
	json.last_name  visit.staff.last_name
	json.title      visit.staff.title
	if visit.staff.title == "Physician"
		json.role   visit.staff.role
	end
	json.department visit.staff.department
	

