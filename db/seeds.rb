# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


facility = Facility.create(name: 'Blue Alps Ski Camp')
thomas = Patient.create(first_name: 'Thomas', middle_name: 'Frank', last_name: 'White', mr: '546542', gender: 0, facility: facility)
