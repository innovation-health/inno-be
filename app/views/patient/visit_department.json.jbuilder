json.current_visit do
	json.visit_id 	   @current_visit.id
	json.time 		   @current_visit.created_at.iso8601
	json.staff_id      @staff.id
	json.name 		   @staff.build_name
	json.role 		   @staff.role
	json.department    @staff.department
	binding.pry
	json.primary_team? @current_visit.patient.primary_team_includes? @current_visit.staff.id
	json.note          @current_visit.note
	json.questions do
		json.array! @unresolved do |q|
			json.id 	   q.id
			json.question  q.question
			json.completed q.resolved
		end
	end
end


json.resolved_questions do
	json.array! @resolved do |rq|
		json.id 	   rq.id
		json.question  rq.question
		json.completed rq.resolved
	end
end


json.department_visits do
	json.array! @department_visits do |dv|
		json.visit_id 	   dv.id
		json.time 		   dv.created_at.iso8601
		json.staff_id      dv.staff.id
		json.name 		   dv.staff.build_name
		json.role 		   dv.staff.role
		json.department    dv.staff.department
		json.primary_team? dv.patient.primary_team_includes? dv.staff.id
		json.note          dv.note
	end
end

