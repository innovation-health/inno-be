json.visits do
	json.array! @visits do |v|
		json.visit_id 	   v.id
		json.time 		   v.created_at.iso8601
		json.name 		   v.staff.build_name
		json.role 		   v.staff.role
		json.department    v.staff.department
		json.primary_team? v.patient.primary_team_includes? v.staff
		json.note          v.note
		json.questions do
			json.array! v.questions do |q|
				json.id 	   q.id
				json.question  q.question
				json.completed q.resolved
			end
		end
	end
end
