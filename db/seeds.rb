User.create!([
  {email: "b@b.com", encrypted_password: "$2a$10$rzh.bOVw29oq78Zsz5BG0uEJpTdzHJsl83FTaPYoP.wCVMR.7JShu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "77-Q5CdBhZ_ipPMD3c4x", admin: false, type: "Patient", prefix: nil, title: "patient", first_name: "Brian", last_name: "Rossetti", role: nil, department: nil},
  {email: "d@d.com", encrypted_password: "$2a$10$rA9fS9S5J3ETKgXJmMKXk.Sys8qWfX6ZXAl8ticZ3eGHhJ.o.1MJO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "xvg51taSmh3jREszbNhE", admin: false, type: "Staff", prefix: "Dr.", title: "Physician", first_name: "Bob", last_name: "Holben", role: "Internist", department: "test"},
  {email: "dd@d.com", encrypted_password: "$2a$10$M7eizG5VNe74Rb5F0kdb2.THJWgzMq51PdA9uCshLwbb6WqTd138.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "Cdyiaz2x6Fp1QFombHV3", admin: false, type: "Staff", prefix: "Dr.", title: "Gastro", first_name: "Susie", last_name: "Scalpal", role: "Gastro", department: "test1"},
  {email: "ddd@d.com", encrypted_password: "$2a$10$55YnHOyuL8Wd09moKsThbOuQbJ2WMxGzWdoz2BrcT9PScNxJFqec.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "NFN-u99MATunXGVnYVGM", admin: false, type: "Staff", prefix: "Dr.", title: "Physician", first_name: "Sammy", last_name: "Shakeyhands", role: "Surgeon", department: "test"},
  {email: "dddd@d.com", encrypted_password: "$2a$10$VGIeWroyiD/1YYhM5McqxeKITy6GlHSoPmM7mRwluB9fjFaSuWNCq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "3yy7fD4VTJCCCosZxzb5", admin: false, type: "Staff", prefix: "Dr.", title: "Gastro", first_name: "Dechant", last_name: "Dylan", role: "Gastro", department: "test1"},
  {email: "test@t.com", encrypted_password: "$2a$10$L8O7.bZ2CGKUQaG4s5LPCOHUt.HICwyGmUxliljMRKZnFOwBk.c7m", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "Jybm6BbDgaQ6p4g8v_Y2", admin: false, type: "Staff", prefix: nil, title: nil, first_name: nil, last_name: nil, role: nil, department: nil}
])
Note.create!([
  {patient_id: 1, note: "testgingingi", visit_id: 1},
  {patient_id: 1, note: "testingiggnig", visit_id: nil}
])
PrimaryTeam.create!([
  {patient_id: 1, staff_id: 2},
  {patient_id: 1, staff_id: 3},
  {patient_id: 1, staff_id: 4},
  {patient_id: 1, staff_id: 5}
])
Question.create!([
  {question: "test", resolved: false, patient_id: 1, visit_id: nil},
  {question: "test1", resolved: false, patient_id: 1, visit_id: nil},
  {question: "testingigng", resolved: false, patient_id: 1, visit_id: 4},
  {question: nil, resolved: false, patient_id: nil, visit_id: 4},
  {question: "testingigng", resolved: false, patient_id: nil, visit_id: 4}
])
Visit.create!([
  {staff_id: 2, patient_id: 1},
  {staff_id: 3, patient_id: 1},
  {staff_id: 4, patient_id: 1},
  {staff_id: 5, patient_id: 1}
])
Patient.create!([
  {email: "b@b.com", encrypted_password: "$2a$10$rzh.bOVw29oq78Zsz5BG0uEJpTdzHJsl83FTaPYoP.wCVMR.7JShu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "77-Q5CdBhZ_ipPMD3c4x", admin: false, type: "Patient", prefix: nil, title: "patient", first_name: "Brian", last_name: "Rossetti", role: nil, department: nil}
])
Staff.create!([
  {email: "d@d.com", encrypted_password: "$2a$10$rA9fS9S5J3ETKgXJmMKXk.Sys8qWfX6ZXAl8ticZ3eGHhJ.o.1MJO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "xvg51taSmh3jREszbNhE", admin: false, type: "Staff", prefix: "Dr.", title: "Physician", first_name: "Bob", last_name: "Holben", role: "Internist", department: "test"},
  {email: "dd@d.com", encrypted_password: "$2a$10$M7eizG5VNe74Rb5F0kdb2.THJWgzMq51PdA9uCshLwbb6WqTd138.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "Cdyiaz2x6Fp1QFombHV3", admin: false, type: "Staff", prefix: "Dr.", title: "Gastro", first_name: "Susie", last_name: "Scalpal", role: "Gastro", department: "test1"},
  {email: "ddd@d.com", encrypted_password: "$2a$10$55YnHOyuL8Wd09moKsThbOuQbJ2WMxGzWdoz2BrcT9PScNxJFqec.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "NFN-u99MATunXGVnYVGM", admin: false, type: "Staff", prefix: "Dr.", title: "Physician", first_name: "Sammy", last_name: "Shakeyhands", role: "Surgeon", department: "test"},
  {email: "dddd@d.com", encrypted_password: "$2a$10$VGIeWroyiD/1YYhM5McqxeKITy6GlHSoPmM7mRwluB9fjFaSuWNCq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "3yy7fD4VTJCCCosZxzb5", admin: false, type: "Staff", prefix: "Dr.", title: "Gastro", first_name: "Dechant", last_name: "Dylan", role: "Gastro", department: "test1"},
  {email: "test@t.com", encrypted_password: "$2a$10$L8O7.bZ2CGKUQaG4s5LPCOHUt.HICwyGmUxliljMRKZnFOwBk.c7m", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, authentication_token: "Jybm6BbDgaQ6p4g8v_Y2", admin: false, type: "Staff", prefix: nil, title: nil, first_name: nil, last_name: nil, role: nil, department: nil}
])
