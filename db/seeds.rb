# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating physicians...'

physicians = [{ name: 'John Dorian', position: 'Staff Internist', ssn: 111_111_111 },
              { name: 'Elliot Reid', position: 'Attending Physician', ssn: 222_222_222 },
              { name: 'Christopher Turk', position: 'Surgical Attending Physician', ssn: 333_333_333 },
              { name: 'Percival Cox', position: 'Senior Attending Physician', ssn: 444_444_444 },
              { name: 'Bob Kelso', position: 'Head Chief of Medicine', ssn: 555_555_555 },
              { name: 'Todd Quinlan', position: 'Surgical Attending Physician', ssn: 666_666_666 },
              { name: 'John Wen', position: 'Surgical Attending Physician', ssn: 777_777_777 },
              { name: 'Keith Dudemeister', position: 'MD Resident', ssn: 888_888_888 },
              { name: 'Molly Clock', position: 'Attending Psychiatrist', ssn: 999_999_999 }]

Physician.create(physicians)

puts 'Creating departments...'

departments = [{ name: 'General Medicine', physician_id: 4 },
               { name: 'Surgery', physician_id: 7 },
               { name: 'Psychiatry', physician_id: 9 }]

Department.create(departments)

puts 'Creating affiliations...'

affiliations = [
  {physician_id: 1, department_id: 1, primary_affiliation: true},
  {physician_id: 2, department_id: 1, primary_affiliation: true},
  {physician_id: 3, department_id: 1, primary_affiliation: false},
  {physician_id: 3, department_id: 2, primary_affiliation: true},
  {physician_id: 4, department_id: 1, primary_affiliation: true},
  {physician_id: 5, department_id: 1, primary_affiliation: true},
  {physician_id: 6, department_id: 2, primary_affiliation: true},
  {physician_id: 7, department_id: 1, primary_affiliation: false},
  {physician_id: 7, department_id: 2, primary_affiliation: true},
  {physician_id: 8, department_id: 1, primary_affiliation: true},
  {physician_id: 9, department_id: 3, primary_affiliation: true}
]

Affiliation.create(affiliations)

puts 'Creating procedures...'

procedures = [
  {name: 'Reverse Rhinopodoplasty', cost: 1500.0},
  {name: 'Obtuse Pyloric Recombobulation', cost: 3750.0},
  {name: 'Folded Demiophtalmectomy', cost: 4500.0},
  {name: 'Complete Walletectomy', cost: 10000.0},
  {name: 'Obfuscated Dermogastrotomy', cost: 4899.0},
  {name: 'Reversible Pancreomyoplasty', cost: 5600.0},
  {name: 'Follicular Demiectomy', cost: 25.0}
]

Procedure.create(procedures)

puts 'Creating medications...'

medications = [
  {name: 'Procrastin-X', brand: 'X', description: 'N/A'},
  {name: 'Thesisin', brand: 'Foo Labs', description: 'N/A'},
  {name: 'Awakin', brand: 'Bar Laboratories', description: 'N/A'},
  {name: 'Crescavitin', brand: 'Baz Industries', description: 'N/A'},
  {name: 'Melioraurin', brand: 'Snafu Pharmaceuticals', description: 'N/A'}
]

Medication.create(medications)

puts 'Creating blocks...'

blocks = [
  {code: 1, floor: 1},
  {code: 2, floor: 1},
  {code: 3, floor: 1},
  {code: 1, floor: 2},
  {code: 2, floor: 2},
  {code: 3, floor: 2},
  {code: 1, floor: 3},
  {code: 2, floor: 3},
  {code: 3, floor: 3},
  {code: 1, floor: 4},
  {code: 2, floor: 4},
  {code: 3, floor: 4} 
]

Block.create(blocks)

puts 'Creating rooms...'

rooms = [
  {number: 101, type: 'Single', block_id: 1, unavailable: false},
  {number: 102, type: 'Single', block_id: 1, unavailable: false},
  {number: 103, type: 'Single', block_id: 1, unavailable: false},
  {number: 111, type: 'Single', block_id: 2, unavailable: false},
  {number: 112, type: 'Single', block_id: 2, unavailable: true},
  {number: 113, type: 'Single', block_id: 2, unavailable: false},
  {number: 121, type: 'Single', block_id: 3, unavailable: false},
  {number: 122, type: 'Single', block_id: 3, unavailable: false},
  {number: 123, type: 'Single', block_id: 3, unavailable: false},
  {number: 201, type: 'Single', block_id: 4, unavailable: true},
  {number: 202, type: 'Single', block_id: 4, unavailable: false},
  {number: 203, type: 'Single', block_id: 4, unavailable: false},
  {number: 211, type: 'Single', block_id: 5, unavailable: false},
  {number: 212, type: 'Single', block_id: 5, unavailable: false},
  {number: 213, type: 'Single', block_id: 5, unavailable: true},
  {number: 221, type: 'Single', block_id: 6, unavailable: false},
  {number: 222, type: 'Single', block_id: 6, unavailable: false},
  {number: 223, type: 'Single', block_id: 6, unavailable: false},
  {number: 301, type: 'Single', block_id: 7, unavailable: false},
  {number: 302, type: 'Single', block_id: 7, unavailable: true},
  {number: 303, type: 'Single', block_id: 7, unavailable: false},
  {number: 311, type: 'Single', block_id: 8, unavailable: false},
  {number: 312, type: 'Single', block_id: 8, unavailable: false},
  {number: 313, type: 'Single', block_id: 8, unavailable: false},
  {number: 321, type: 'Single', block_id: 9, unavailable: true},
  {number: 322, type: 'Single', block_id: 9, unavailable: false},
  {number: 323, type: 'Single', block_id: 9, unavailable: false},
  {number: 401, type: 'Single', block_id: 10, unavailable: false},
  {number: 402, type: 'Single', block_id: 10, unavailable: true},
  {number: 403, type: 'Single', block_id: 10, unavailable: false},
  {number: 411, type: 'Single', block_id: 11, unavailable: false},
  {number: 412, type: 'Single', block_id: 11, unavailable: false},
  {number: 413, type: 'Single', block_id: 11, unavailable: false},
  {number: 421, type: 'Single', block_id: 12, unavailable: true},
  {number: 422, type: 'Single', block_id: 12, unavailable: false},
  {number: 423, type: 'Single', block_id: 12, unavailable: false},
]

Room.create(rooms)

puts 'Creating nurses...'

nurses = [
  {name: 'Carla Espinosa', position: 'Head Nurse', registered: true, ssn: 11111110},
  {name: 'Laverne Roberts', position: 'Nurse', registered: true, ssn: 22222220},
  {name: 'Paul Flowers', position: 'Nurse', registered: false, ssn: 33333330}
]

Nurse.create(nurses)

puts 'Creating trainings...'

trainings = [
  {physician_id: 3, procedure_id: 1, certification_date: '2008-01-01', certification_expires_at: '2008-12-31'},
  {physician_id: 3, procedure_id: 2, certification_date: '2008-01-01', certification_expires_at: '2008-12-31'},
  {physician_id: 3, procedure_id: 5, certification_date: '2008-01-01', certification_expires_at: '2008-12-31'},
  {physician_id: 3, procedure_id: 6, certification_date: '2008-01-01', certification_expires_at: '2008-12-31'},
  {physician_id: 3, procedure_id: 7, certification_date: '2008-01-01', certification_expires_at: '2008-12-31'},
  {physician_id: 6, procedure_id: 2, certification_date: '2007-01-01', certification_expires_at: '2007-12-31'},
  {physician_id: 6, procedure_id: 5, certification_date: '2007-01-01', certification_expires_at: '2007-12-31'},
  {physician_id: 6, procedure_id: 6, certification_date: '2007-01-01', certification_expires_at: '2007-12-31'},
  {physician_id: 6, procedure_id: 7, certification_date: '2007-01-01', certification_expires_at: '2007-12-31'},
  {physician_id: 7, procedure_id: 2, certification_date: '2007-01-01', certification_expires_at: '2007-12-31'},
  {physician_id: 7, procedure_id: 5, certification_date: '2007-01-01', certification_expires_at: '2007-12-31'},
  {physician_id: 7, procedure_id: 6, certification_date: '2007-01-01', certification_expires_at: '2007-12-31'},
  {physician_id: 7, procedure_id: 7, certification_date: '2007-01-01', certification_expires_at: '2007-12-31'

]

Training.create(trainings)
