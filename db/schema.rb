# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_05_23_193554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affiliations", force: :cascade do |t|
    t.bigint "physician_id", null: false
    t.bigint "department_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_affiliations_on_department_id"
    t.index ["physician_id", "department_id"], name: "index_affiliations_on_physician_id_and_department_id", unique: true
    t.index ["physician_id"], name: "index_affiliations_on_physician_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "nurse_id"
    t.bigint "physician_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.string "examination_room"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nurse_id"], name: "index_appointments_on_nurse_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["physician_id"], name: "index_appointments_on_physician_id"
  end

  create_table "blocks", force: :cascade do |t|
    t.integer "floor"
    t.integer "block"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.bigint "physician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["physician_id"], name: "index_departments_on_physician_id"
  end

  create_table "medications", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nurses", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.boolean "registered"
    t.integer "ssn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "oncalls", force: :cascade do |t|
    t.bigint "nurse_id", null: false
    t.bigint "block_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["block_id"], name: "index_oncalls_on_block_id"
    t.index ["nurse_id", "block_id"], name: "index_oncalls_on_nurse_id_and_block_id", unique: true
    t.index ["nurse_id"], name: "index_oncalls_on_nurse_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "ssn"
    t.string "name"
    t.string "address"
    t.string "phone"
    t.integer "insurance_id"
    t.bigint "physician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["physician_id"], name: "index_patients_on_physician_id"
    t.index ["ssn"], name: "index_patients_on_ssn", unique: true
  end

  create_table "physicians", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.integer "ssn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.bigint "physician_id", null: false
    t.bigint "patient_id", null: false
    t.bigint "medication_id", null: false
    t.datetime "date"
    t.bigint "appointment_id"
    t.string "dose"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_prescriptions_on_appointment_id"
    t.index ["medication_id"], name: "index_prescriptions_on_medication_id"
    t.index ["patient_id", "physician_id", "medication_id", "date"], name: "unique_prescriptions", unique: true
    t.index ["patient_id"], name: "index_prescriptions_on_patient_id"
    t.index ["physician_id"], name: "index_prescriptions_on_physician_id"
  end

  create_table "procedures", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "type"
    t.bigint "block_id", null: false
    t.boolean "unavailable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["block_id"], name: "index_rooms_on_block_id"
  end

  create_table "stays", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "room_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_stays_on_patient_id"
    t.index ["room_id"], name: "index_stays_on_room_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.bigint "physician_id", null: false
    t.bigint "procedure_id", null: false
    t.datetime "certification_date"
    t.datetime "certification_expires_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["physician_id", "procedure_id"], name: "index_trainings_on_physician_id_and_procedure_id", unique: true
    t.index ["physician_id"], name: "index_trainings_on_physician_id"
    t.index ["procedure_id"], name: "index_trainings_on_procedure_id"
  end

  create_table "undergos", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "procedure_id", null: false
    t.bigint "stay_id", null: false
    t.datetime "date"
    t.bigint "physician_id", null: false
    t.bigint "nurse_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nurse_id"], name: "index_undergos_on_nurse_id"
    t.index ["patient_id", "procedure_id", "stay_id", "date"], name: "unique_undergoes", unique: true
    t.index ["patient_id"], name: "index_undergos_on_patient_id"
    t.index ["physician_id"], name: "index_undergos_on_physician_id"
    t.index ["procedure_id"], name: "index_undergos_on_procedure_id"
    t.index ["stay_id"], name: "index_undergos_on_stay_id"
  end

  add_foreign_key "affiliations", "departments"
  add_foreign_key "affiliations", "physicians"
  add_foreign_key "appointments", "nurses"
  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "physicians"
  add_foreign_key "departments", "physicians"
  add_foreign_key "oncalls", "blocks"
  add_foreign_key "oncalls", "nurses"
  add_foreign_key "patients", "physicians"
  add_foreign_key "prescriptions", "appointments"
  add_foreign_key "prescriptions", "medications"
  add_foreign_key "prescriptions", "patients"
  add_foreign_key "prescriptions", "physicians"
  add_foreign_key "rooms", "blocks"
  add_foreign_key "stays", "patients"
  add_foreign_key "stays", "rooms"
  add_foreign_key "trainings", "physicians"
  add_foreign_key "trainings", "procedures"
  add_foreign_key "undergos", "nurses"
  add_foreign_key "undergos", "patients"
  add_foreign_key "undergos", "physicians"
  add_foreign_key "undergos", "procedures"
  add_foreign_key "undergos", "stays"
end
