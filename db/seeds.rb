models = [Patient, Staff, Note, PrimaryTeam, Question, Visit]
models.each {|model| model.all.delete_all}

Patient.create(email: 'patient@gmail.com', password: 'p', title: 'Patient', first_name: 'Sally', last_name: 'Sue')
patient = Patient.first; patient.id = 1; patient.save
pid = Patient.first.id

Staff.create(email: Faker::Internet.email, password: "password,", prefix: 'Dr.',  first_name: 'Charles', last_name:  'Costa',     title: 'Physician', role: 'Attending', department:  'Cardiology', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", prefix: 'Dr.',  first_name: 'Marina',  last_name:  'Barnes',    title: 'Physician', role: 'Attending', department:  'General Surgery', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", prefix: 'Dr.',  first_name: 'Ilya',    last_name:  'Kovalyov',  title: 'Physician', role: 'Resident',  department:  'Cardiology', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", prefix: 'Dr.',  first_name: 'Lora',    last_name:  'Sedlacek',  title: 'Resident',  role: 'Attending', department:  'General Surgery ', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", prefix: 'Dr.',  first_name: 'Lora',    last_name:  'Sedlacek',  title: 'Resident',  role: 'Attending', department:  'General Surgery', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", prefix: 'Dr.',  first_name: 'Dennis',  last_name:  'Schulze',   title: 'Physician', role: 'Resident',  department:  'Nephrology', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", prefix: 'Dr.',  first_name: 'Marina',  last_name:  'Costa',     title: 'Physician', role: 'Attending', department:  'Cardiology', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", prefix: 'Dr.',  first_name: 'Ilya',    last_name:  'Kovalyov',  title: 'Physician', role: 'Resident',  department:  'Cardiology', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", first_name: 'Julien', last_name: 'Nobert', title: 'Nurse', department: 'Nursing', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", first_name: 'Kristi', last_name: 'Jones',  title: 'Nurse', department: 'Nursing', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", first_name: 'Kristi', last_name: 'Jones',  title: 'Nurse', department: 'Nursing', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", first_name: 'Kristi', last_name: 'Jones',  title: 'Nurse', department: 'Nursing', cell: Faker::Number.number(10))
Staff.create(email: Faker::Internet.email, password: "password,", first_name: 'Julien', last_name: 'Nobert', title: 'Nurse', department: 'Nursing', cell: Faker::Number.number(10))

def rand_staff
  Staff.all.sample.id
end


demo_doctor = Staff.where(first_name: "Charles").first
demo_doctor.id = 770097295; demo_doctor.save


s  = Staff.find_by_first_name('Julien')
ss = Staff.find_by_first_name('Kristi')
marina  = Staff.where(first_name: "Marina").first
ilya    = Staff.where(first_name: "Ilya").first
lora    = Staff.where(first_name: "Lora").first
dennis  = Staff.where(first_name: "Dennis").first

PrimaryTeam.create(patient_id: pid, staff_id: s.id)
PrimaryTeam.create(patient_id: pid, staff_id: ss.id)
PrimaryTeam.create(patient_id: pid, staff_id: marina.id)
PrimaryTeam.create(patient_id: pid, staff_id: ilya.id)
PrimaryTeam.create(patient_id: pid, staff_id: lora.id)
PrimaryTeam.create(patient_id: pid, staff_id: dennis.id)



Visit.create(created_at: DateTime.now.change({hour: 8, min: 30}),  patient_id: pid, staff_id: ss.id) 
Visit.create(created_at: DateTime.now.change({hour: 9, min: 03}),  patient_id: pid, staff_id: ilya.id) 
Visit.create(created_at: DateTime.now.change({hour: 8, min: 20}),  patient_id: pid, staff_id: demo_doctor.id) 
Visit.create(created_at: DateTime.now.change({hour: 8, min: 04}),  patient_id: pid, staff_id: marina.id) 
Visit.create(created_at: DateTime.now.change({hour: 7, min: 48}),  patient_id: pid, staff_id: s.id) 
Visit.create(created_at: DateTime.now.change({hour: 6, min: 30}),  patient_id: pid, staff_id: demo_doctor.id) 
Visit.create(created_at: DateTime.now.change({hour: 13, min: 30}), patient_id: pid, staff_id: ss.id) 
Visit.create(created_at: DateTime.now.change({hour: 21, min: 20}), patient_id: pid, staff_id: lora.id) 
Visit.create(created_at: DateTime.now.change({hour: 19, min: 50}), patient_id: pid, staff_id: ilya.id) 
Visit.create(created_at: DateTime.now.change({hour: 19, min: 02}), patient_id: pid, staff_id: demo_doctor.id) 
Visit.create(created_at: DateTime.now.change({hour: 18, min: 02}), patient_id: pid, staff_id: s.id) 
Visit.create(created_at: DateTime.now.change({hour: 17, min: 50}), patient_id: pid, staff_id: dennis.id) 
Visit.create(created_at: DateTime.now.change({hour: 15, min: 20}), patient_id: pid, staff_id: marina.id) 

def rand_visit
  Visit.all.sample.id
end

#open
Question.create(patient_id: pid, visit_id: rand_visit, question: 'When can I start eating normal food?')
Question.create(patient_id: pid, visit_id: rand_visit, question: 'Can I play football again next week?')
Question.create(patient_id: pid, visit_id: rand_visit, question: 'What do I need to watch for after I go home?')


charlesv = Visit.where(staff_id: demo_doctor.id).first
Question.create(patient_id: pid, visit_id: charlesv.id, question: 'My daughter wanted to ask, how can she prepare my room at home for when I am discharged?')
Question.create(patient_id: pid, visit_id: charlesv.id, question: 'Ask about wheelchair recommendations.')
Question.create(patient_id: pid, visit_id: charlesv.id, question: 'How do I deal with bed sores?')
Question.create(patient_id: pid, visit_id: charlesv.id, question: 'I’ve been constipated for the past week, is that normal?')


ilyav = Visit.where(staff_id: ilya.id).first
Question.create(patient_id: pid, visit_id: ilyav.id, question: 'When can I start eating salt again? Can you review my diet restrictions again?')
Question.create(patient_id: pid, visit_id: ilyav.id, question: 'Why are my blood pressure medications different then I take at home?')
Question.create(patient_id: pid, visit_id: ilyav.id, question: 'What is Lovenox? Why am I on it?')


lorav = Visit.where(staff_id: lora.id).first
Question.create(patient_id: pid, visit_id: lorav, question: 'Ask about wheelchair recommendations.')
Question.create(patient_id: pid, visit_id: lorav, question: 'How do I deal with bed sores?')
Question.create(patient_id: pid, visit_id: lorav, question: 'I’ve been constipated for the past week, is that normal?')


dennisv = Visit.where(staff_id: dennis.id).first
Question.create(patient_id: pid, visit_id: dennisv, question: 'What does high creatine mean? What do I need to do to decrease this?')
Question.create(patient_id: pid, visit_id: dennisv, question: 'Will it help if I drink more than 8 cups of water per day?')


marinav = Visit.where(staff_id: marina.id).first
Question.create(patient_id: pid, visit_id: marinav, question: 'My blood pressure medications different then I take at home? why?')
Question.create(patient_id: pid, visit_id: marinav, question: 'What is Lovenox? Why am I on it?')
Question.create(patient_id: pid, visit_id: marinav, question: 'Dr. Costa, when can I start eating salt again? Can you review')
Question.create(patient_id: pid, visit_id: marinav, question: 'What is heparin? Why am I on it? I don’t like being on meds I dont need, how, can I be off')


Note.create(patient_id: pid, visit_id: rand_visit, note: 'Dr. S says that the kids can come visit today. Need to walk at least 5 laps today and use the spirometer. Had low BP yesterday which caused dizziness so they gave me an IV. Call nurse if I feel dizzy again')




demo_visit_id = Visit.where(staff_id: demo_doctor.id).sample.id
#QUESTIONS For cardiologists
Question.create(patient_id: pid, visit_id: demo_visit_id, question: 'Why did my doctor ask for you to see me? Is my heart okay?')
Question.create(patient_id: pid, visit_id: demo_visit_id, question: 'Why am I not taking my blood pressure medicine anymore?')
#resolved
Question.create(patient_id: pid, resolved: true, visit_id: rand_visit, question: 'Why was I dizzy when I got up to walk yesterday?)')
Question.create(patient_id: pid, resolved: true, visit_id: rand_visit, question: 'Can I restart taking my Hytrin?')
