# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140801174401) do

  create_table "banks", force: true do |t|
    t.string   "bank_name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "company_name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "department_name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_jobs", force: true do |t|
    t.string   "employer_name"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date_from"
    t.date     "date_to"
  end

  create_table "employee_zcontacts", force: true do |t|
    t.integer  "employee_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.boolean  "is_emergency_contact"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "relationship_id"
  end

  add_index "employee_zcontacts", ["relationship_id"], name: "index_employee_zcontacts_on_relationship_id"

  create_table "employee_zeducations", force: true do |t|
    t.integer  "employee_id"
    t.integer  "education_id"
    t.string   "school_attended"
    t.date     "date_from"
    t.date     "date_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "gender"
    t.date     "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "marital_status_id"
    t.integer  "trn"
    t.string   "nis"
    t.string   "email"
    t.string   "employee_number"
    t.string   "image"
    t.integer  "company_id"
    t.integer  "department_id"
    t.integer  "parish_id"
    t.integer  "location_id"
    t.integer  "bank_id"
    t.string   "home_address_1"
    t.string   "home_address_2"
    t.string   "city"
    t.string   "mobile_phone"
    t.string   "work_phone"
    t.string   "bank_account_number"
    t.integer  "position_id"
    t.integer  "work_schedule_id"
    t.string   "status"
  end

  add_index "employees", ["work_schedule_id"], name: "index_employees_on_work_schedule_id"

  create_table "locations", force: true do |t|
    t.string   "location_name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  create_table "marital_statuses", force: true do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parishes", force: true do |t|
    t.string   "parish_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.string   "position_name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.string   "relationship_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_schedules", force: true do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
