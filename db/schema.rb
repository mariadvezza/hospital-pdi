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

ActiveRecord::Schema.define(version: 2023_05_05_152934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affiliations", force: :cascade do |t|
    t.bigint "physician_id", null: false
    t.bigint "department_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_affiliations_on_department_id"
    t.index ["physician_id"], name: "index_affiliations_on_physician_id"
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

  create_table "trainings", force: :cascade do |t|
    t.bigint "physician_id", null: false
    t.bigint "procedure_id", null: false
    t.datetime "certification_date"
    t.datetime "certification_expires_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["physician_id"], name: "index_trainings_on_physician_id"
    t.index ["procedure_id"], name: "index_trainings_on_procedure_id"
  end

  add_foreign_key "affiliations", "departments"
  add_foreign_key "affiliations", "physicians"
  add_foreign_key "departments", "physicians"
  add_foreign_key "patients", "physicians"
  add_foreign_key "rooms", "blocks"
  add_foreign_key "trainings", "physicians"
  add_foreign_key "trainings", "procedures"
end
