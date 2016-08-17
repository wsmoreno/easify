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

ActiveRecord::Schema.define(version: 20160815084704) do

  create_table "easify_devise_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,  null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "easify_devise_users", ["confirmation_token"], name: "index_easify_devise_users_on_confirmation_token", unique: true, using: :btree
  add_index "easify_devise_users", ["email"], name: "index_easify_devise_users_on_email", unique: true, using: :btree
  add_index "easify_devise_users", ["reset_password_token"], name: "index_easify_devise_users_on_reset_password_token", unique: true, using: :btree
  add_index "easify_devise_users", ["unlock_token"], name: "index_easify_devise_users_on_unlock_token", unique: true, using: :btree

  create_table "easify_hr_cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "easify_hr_citizenships", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "easify_hr_country_id", limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "easify_hr_citizenships", ["easify_hr_country_id"], name: "index_easify_hr_citizenships_on_easify_hr_country_id", using: :btree

  create_table "easify_hr_civil_statuses", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "easify_hr_companies", force: :cascade do |t|
    t.string   "name",                      limit: 255
    t.string   "address1",                  limit: 255
    t.string   "address2",                  limit: 255
    t.string   "tax_identification_number", limit: 255
    t.integer  "easify_hr_city_id",         limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.date     "start_date"
    t.date     "end_date"
  end

  add_index "easify_hr_companies", ["easify_hr_city_id"], name: "index_easify_hr_companies_on_easify_hr_city_id", using: :btree

  create_table "easify_hr_contact_informations", force: :cascade do |t|
    t.date     "end_date"
    t.string   "number_or_address", limit: 255
    t.date     "start"
    t.integer  "human_resource_id", limit: 4
    t.integer  "contact_type_id",   limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "easify_hr_contact_informations", ["contact_type_id"], name: "by_contact_type_id", using: :btree
  add_index "easify_hr_contact_informations", ["human_resource_id"], name: "by_human_resource_id", using: :btree

  create_table "easify_hr_contact_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "easify_hr_countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "code",       limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "easify_hr_departments", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "department_head_id",   limit: 4
    t.integer  "easify_hr_company_id", limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "easify_hr_departments", ["department_head_id"], name: "fk_rails_f8646ae2c9", using: :btree
  add_index "easify_hr_departments", ["easify_hr_company_id"], name: "index_easify_hr_departments_on_easify_hr_company_id", using: :btree

  create_table "easify_hr_educations", force: :cascade do |t|
    t.date     "attended_from"
    t.date     "attended_to"
    t.string   "degree",                      limit: 255
    t.text     "extra_curricular_activities", limit: 65535
    t.decimal  "grade_average",                             precision: 10
    t.string   "rank_in_class",               limit: 255
    t.text     "scholastic_honors",           limit: 65535
    t.string   "year_graduated",              limit: 255
    t.integer  "easify_hr_human_resource_id", limit: 4
    t.integer  "easify_hr_school_id",         limit: 4
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  add_index "easify_hr_educations", ["easify_hr_human_resource_id"], name: "index_easify_hr_educations_on_easify_hr_human_resource_id", using: :btree
  add_index "easify_hr_educations", ["easify_hr_school_id"], name: "index_easify_hr_educations_on_easify_hr_school_id", using: :btree

  create_table "easify_hr_human_resources", force: :cascade do |t|
    t.string   "address1",                     limit: 255
    t.string   "address2",                     limit: 255
    t.date     "birthdate"
    t.string   "complexion",                   limit: 255
    t.string   "first_name",                   limit: 255
    t.string   "gender",                       limit: 255
    t.string   "hdmf_number",                  limit: 255
    t.string   "height",                       limit: 255
    t.string   "last_name",                    limit: 255
    t.text     "medical_conditions",           limit: 65535
    t.string   "middle_name",                  limit: 255
    t.string   "nick_name",                    limit: 255
    t.string   "personality_essay",            limit: 255
    t.string   "sss_number",                   limit: 255
    t.string   "tax_identification_number",    limit: 255
    t.string   "weight",                       limit: 255
    t.integer  "supervisor_id",                limit: 4
    t.integer  "easify_hr_citizenship_id",     limit: 4
    t.integer  "easify_hr_city_id",            limit: 4
    t.integer  "easify_hr_civil_status_id",    limit: 4
    t.integer  "easify_hr_company_id",         limit: 4
    t.integer  "easify_hr_office_location_id", limit: 4
    t.integer  "easify_hr_religion_id",        limit: 4
    t.integer  "easify_sys_user_id",           limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "devise_user_id",               limit: 4
  end

  add_index "easify_hr_human_resources", ["devise_user_id"], name: "fk_rails_a7b7aa479a", using: :btree
  add_index "easify_hr_human_resources", ["easify_hr_citizenship_id"], name: "index_easify_hr_human_resources_on_easify_hr_citizenship_id", using: :btree
  add_index "easify_hr_human_resources", ["easify_hr_city_id"], name: "index_easify_hr_human_resources_on_easify_hr_city_id", using: :btree
  add_index "easify_hr_human_resources", ["easify_hr_civil_status_id"], name: "index_easify_hr_human_resources_on_easify_hr_civil_status_id", using: :btree
  add_index "easify_hr_human_resources", ["easify_hr_company_id"], name: "index_easify_hr_human_resources_on_easify_hr_company_id", using: :btree
  add_index "easify_hr_human_resources", ["easify_hr_office_location_id"], name: "index_easify_hr_human_resources_on_easify_hr_office_location_id", using: :btree
  add_index "easify_hr_human_resources", ["easify_hr_religion_id"], name: "index_easify_hr_human_resources_on_easify_hr_religion_id", using: :btree
  add_index "easify_hr_human_resources", ["easify_sys_user_id"], name: "index_easify_hr_human_resources_on_easify_sys_user_id", using: :btree
  add_index "easify_hr_human_resources", ["supervisor_id"], name: "fk_rails_5327202ad2", using: :btree

  create_table "easify_hr_office_locations", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "address1",          limit: 255
    t.string   "address",           limit: 255
    t.string   "phone_number",      limit: 255
    t.integer  "easify_hr_city_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "easify_hr_office_locations", ["easify_hr_city_id"], name: "index_easify_hr_office_locations_on_easify_hr_city_id", using: :btree

  create_table "easify_hr_references", force: :cascade do |t|
    t.string   "address1",                    limit: 255
    t.string   "address2",                    limit: 255
    t.string   "email_address",               limit: 255
    t.string   "first_name",                  limit: 255
    t.string   "last_name",                   limit: 255
    t.string   "middle_name",                 limit: 255
    t.string   "mobile_number",               limit: 255
    t.string   "phone_number",                limit: 255
    t.integer  "easify_hr_human_resource_id", limit: 4
    t.integer  "easify_hr_city_id",           limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "easify_hr_references", ["easify_hr_city_id"], name: "index_easify_hr_references_on_easify_hr_city_id", using: :btree
  add_index "easify_hr_references", ["easify_hr_human_resource_id"], name: "index_easify_hr_references_on_easify_hr_human_resource_id", using: :btree

  create_table "easify_hr_relationships", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "easify_hr_relatives", force: :cascade do |t|
    t.string   "address1",                    limit: 255
    t.string   "address2",                    limit: 255
    t.integer  "age",                         limit: 4
    t.date     "birthdate"
    t.string   "company_name",                limit: 255
    t.string   "email_address",               limit: 255
    t.boolean  "emergency_contact"
    t.string   "first_name",                  limit: 255
    t.string   "gender",                      limit: 255
    t.string   "last_name",                   limit: 255
    t.string   "middle_name",                 limit: 255
    t.string   "mobile_number",               limit: 255
    t.string   "occupation",                  limit: 255
    t.string   "phone_number",                limit: 255
    t.integer  "easify_hr_human_resource_id", limit: 4
    t.integer  "easify_hr_relationship_id",   limit: 4
    t.integer  "easify_hr_city_id",           limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "easify_hr_relatives", ["easify_hr_city_id"], name: "index_easify_hr_relatives_on_easify_hr_city_id", using: :btree
  add_index "easify_hr_relatives", ["easify_hr_human_resource_id"], name: "index_easify_hr_relatives_on_easify_hr_human_resource_id", using: :btree
  add_index "easify_hr_relatives", ["easify_hr_relationship_id"], name: "index_easify_hr_relatives_on_easify_hr_relationship_id", using: :btree

  create_table "easify_hr_religions", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "easify_hr_school_levels", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "easify_hr_school_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "easify_hr_schools", force: :cascade do |t|
    t.string   "name",                      limit: 255
    t.string   "address1",                  limit: 255
    t.string   "address2",                  limit: 255
    t.integer  "easify_hr_city_id",         limit: 4
    t.integer  "easify_hr_school_level_id", limit: 4
    t.integer  "easify_hr_school_type_id",  limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "easify_hr_schools", ["easify_hr_city_id"], name: "index_easify_hr_schools_on_easify_hr_city_id", using: :btree
  add_index "easify_hr_schools", ["easify_hr_school_level_id"], name: "index_easify_hr_schools_on_easify_hr_school_level_id", using: :btree
  add_index "easify_hr_schools", ["easify_hr_school_type_id"], name: "index_easify_hr_schools_on_easify_hr_school_type_id", using: :btree

  create_table "easify_hr_skills", force: :cascade do |t|
    t.string   "description",                 limit: 255
    t.string   "level",                       limit: 255
    t.string   "name",                        limit: 255
    t.string   "skill_type",                  limit: 255
    t.integer  "easify_hr_human_resource_id", limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "easify_hr_skills", ["easify_hr_human_resource_id"], name: "index_easify_hr_skills_on_easify_hr_human_resource_id", using: :btree

  create_table "easify_hr_tenureships", force: :cascade do |t|
    t.date     "resignation_date"
    t.date     "date_hired"
    t.string   "position",                    limit: 255
    t.string   "job_description",             limit: 255
    t.string   "level",                       limit: 255
    t.integer  "easify_hr_human_resource_id", limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "easify_hr_tenureships", ["easify_hr_human_resource_id"], name: "index_easify_hr_tenureships_on_easify_hr_human_resource_id", using: :btree

  create_table "easify_hr_trainings", force: :cascade do |t|
    t.date     "date_taken"
    t.string   "description",                 limit: 255
    t.string   "rating",                      limit: 255
    t.string   "venue",                       limit: 255
    t.integer  "easify_hr_human_resource_id", limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "easify_hr_trainings", ["easify_hr_human_resource_id"], name: "index_easify_hr_trainings_on_easify_hr_human_resource_id", using: :btree

  create_table "easify_hr_work_experiences", force: :cascade do |t|
    t.string   "address1",                    limit: 255
    t.string   "address2",                    limit: 255
    t.text     "awards",                      limit: 65535
    t.string   "company_name",                limit: 255
    t.date     "ending_period"
    t.decimal  "ending_salary",                             precision: 10
    t.string   "last_position",               limit: 255
    t.text     "reason_for_leaving",          limit: 65535
    t.text     "recognitions",                limit: 65535
    t.date     "start_period"
    t.decimal  "starting_salary",                           precision: 10
    t.integer  "easify_hr_city_id",           limit: 4
    t.integer  "easify_hr_human_resource_id", limit: 4
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  add_index "easify_hr_work_experiences", ["easify_hr_city_id"], name: "index_easify_hr_work_experiences_on_easify_hr_city_id", using: :btree
  add_index "easify_hr_work_experiences", ["easify_hr_human_resource_id"], name: "index_easify_hr_work_experiences_on_easify_hr_human_resource_id", using: :btree

  create_table "easify_sys_roles", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "easify_sys_user_roles", force: :cascade do |t|
    t.integer  "easify_sys_user_id", limit: 4
    t.integer  "easify_sys_role_id", limit: 4
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "easify_sys_user_roles", ["easify_sys_role_id"], name: "index_easify_sys_user_roles_on_easify_sys_role_id", using: :btree
  add_index "easify_sys_user_roles", ["easify_sys_user_id"], name: "index_easify_sys_user_roles_on_easify_sys_user_id", using: :btree

  create_table "easify_sys_users", force: :cascade do |t|
    t.boolean  "activated"
    t.date     "activated_at"
    t.string   "activation_digest", limit: 255
    t.string   "email",             limit: 255
    t.date     "end_date"
    t.string   "user_name",         limit: 255
    t.string   "password_digest",   limit: 255
    t.string   "remember_digest",   limit: 255
    t.string   "reset_digest",      limit: 255
    t.date     "reset_sent_at"
    t.date     "start_date"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_foreign_key "easify_hr_citizenships", "easify_hr_countries"
  add_foreign_key "easify_hr_companies", "easify_hr_cities"
  add_foreign_key "easify_hr_contact_informations", "easify_hr_contact_types", column: "contact_type_id"
  add_foreign_key "easify_hr_contact_informations", "easify_hr_human_resources", column: "human_resource_id"
  add_foreign_key "easify_hr_departments", "easify_hr_companies"
  add_foreign_key "easify_hr_departments", "easify_hr_human_resources", column: "department_head_id"
  add_foreign_key "easify_hr_educations", "easify_hr_human_resources"
  add_foreign_key "easify_hr_educations", "easify_hr_schools"
  add_foreign_key "easify_hr_human_resources", "easify_devise_users", column: "devise_user_id"
  add_foreign_key "easify_hr_human_resources", "easify_hr_cities"
  add_foreign_key "easify_hr_human_resources", "easify_hr_citizenships"
  add_foreign_key "easify_hr_human_resources", "easify_hr_civil_statuses"
  add_foreign_key "easify_hr_human_resources", "easify_hr_companies"
  add_foreign_key "easify_hr_human_resources", "easify_hr_human_resources", column: "supervisor_id"
  add_foreign_key "easify_hr_human_resources", "easify_hr_office_locations"
  add_foreign_key "easify_hr_human_resources", "easify_hr_religions"
  add_foreign_key "easify_hr_human_resources", "easify_sys_users"
  add_foreign_key "easify_hr_office_locations", "easify_hr_cities"
  add_foreign_key "easify_hr_references", "easify_hr_cities"
  add_foreign_key "easify_hr_references", "easify_hr_human_resources"
  add_foreign_key "easify_hr_relatives", "easify_hr_cities"
  add_foreign_key "easify_hr_relatives", "easify_hr_human_resources"
  add_foreign_key "easify_hr_relatives", "easify_hr_relationships"
  add_foreign_key "easify_hr_schools", "easify_hr_cities"
  add_foreign_key "easify_hr_schools", "easify_hr_school_levels"
  add_foreign_key "easify_hr_schools", "easify_hr_school_types"
  add_foreign_key "easify_hr_skills", "easify_hr_human_resources"
  add_foreign_key "easify_hr_tenureships", "easify_hr_human_resources"
  add_foreign_key "easify_hr_trainings", "easify_hr_human_resources"
  add_foreign_key "easify_hr_work_experiences", "easify_hr_cities"
  add_foreign_key "easify_hr_work_experiences", "easify_hr_human_resources"
  add_foreign_key "easify_sys_user_roles", "easify_devise_users", column: "easify_sys_user_id", name: "devise_user_connect_to_roles"
  add_foreign_key "easify_sys_user_roles", "easify_sys_roles"
  add_foreign_key "easify_sys_user_roles", "easify_sys_users"
end
