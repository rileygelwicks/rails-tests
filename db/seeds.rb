# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


facility = Facility.create(name: 'Blue Alps Ski Camp')

thomas = Patient.create(first_name: 'Thomas', middle_name: 'Frank', last_name: 'Schudel', mr: '546542', gender: 0, facility: facility, dob: '1976-10-20')

thomas_admission = Admission.create(moment: 1.week.ago , patient: thomas)

thomas_admission_2 = Admission.create(moment: 1.day.ago, patient: thomas)

diagnosis = Diagnosis.create(code: 'S82.101', description: "fracture of upper end of the right tibia", patient: thomas)