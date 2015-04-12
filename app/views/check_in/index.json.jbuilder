json.new_visit do
  json.patient_id @recent_check_in.patient.id
  json.staff_id @recent_check_in.staff.id
end