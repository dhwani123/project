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

ActiveRecord::Schema.define(version: 20140131112007) do

  create_table "cstudents", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "gender"
    t.integer  "grade"
    t.string   "division"
    t.text     "address"
    t.string   "contactnumber"
    t.date     "dateofbirth"
    t.string   "bloodgroup"
    t.string   "fname"
    t.string   "fqualification"
    t.string   "foccupation"
    t.string   "fincome"
    t.string   "fcontactnumber"
    t.string   "femailid"
    t.string   "mname"
    t.string   "mqualification"
    t.string   "moccupation"
    t.string   "mincome"
    t.string   "mcontactnumber"
    t.string   "memailid"
    t.date     "dateofjoining"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "cstudents", ["email"], name: "index_cstudents_on_email", unique: true, using: :btree
  add_index "cstudents", ["reset_password_token"], name: "index_cstudents_on_reset_password_token", unique: true, using: :btree

  create_table "cteachers", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "gender"
    t.text     "address"
    t.string   "mobilenumber"
    t.date     "dateofbirth"
    t.string   "qualification"
    t.string   "specification"
    t.string   "designation"
    t.integer  "experience"
    t.date     "dateofjoining"
    t.string   "bloodgroup"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cubeprincipals", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cubeprincipals", ["email"], name: "index_cubeprincipals_on_email", unique: true, using: :btree
  add_index "cubeprincipals", ["reset_password_token"], name: "index_cubeprincipals_on_reset_password_token", unique: true, using: :btree

  create_table "cubestudents", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cubestudents", ["email"], name: "index_cubestudents_on_email", unique: true, using: :btree
  add_index "cubestudents", ["reset_password_token"], name: "index_cubestudents_on_reset_password_token", unique: true, using: :btree

  create_table "cubeteachers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cubeteachers", ["email"], name: "index_cubeteachers_on_email", unique: true, using: :btree
  add_index "cubeteachers", ["reset_password_token"], name: "index_cubeteachers_on_reset_password_token", unique: true, using: :btree

  create_table "dhwani123s", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "postedby"
    t.integer  "postedbyid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prins", ["email"], name: "index_prins_on_email", unique: true, using: :btree
  add_index "prins", ["reset_password_token"], name: "index_prins_on_reset_password_token", unique: true, using: :btree

  create_table "pris", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pris", ["email"], name: "index_pris_on_email", unique: true, using: :btree
  add_index "pris", ["reset_password_token"], name: "index_pris_on_reset_password_token", unique: true, using: :btree

  create_table "rprincipals", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rprincipals", ["email"], name: "index_rprincipals_on_email", unique: true, using: :btree
  add_index "rprincipals", ["reset_password_token"], name: "index_rprincipals_on_reset_password_token", unique: true, using: :btree

  create_table "rstudents", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rstudents", ["email"], name: "index_rstudents_on_email", unique: true, using: :btree
  add_index "rstudents", ["reset_password_token"], name: "index_rstudents_on_reset_password_token", unique: true, using: :btree

  create_table "rstuds", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.date     "dob"
    t.string   "address"
    t.string   "fathername"
    t.string   "mothername"
    t.string   "f_qaulification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rteachers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rteachers", ["email"], name: "index_rteachers_on_email", unique: true, using: :btree
  add_index "rteachers", ["reset_password_token"], name: "index_rteachers_on_reset_password_token", unique: true, using: :btree

  create_table "rteaches", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.date     "dob"
    t.date     "doj"
    t.string   "specification"
    t.string   "experience"
    t.string   "designation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sregs", force: true do |t|
    t.string   "name"
    t.string   "class"
    t.string   "city"
    t.string   "bloodgroup"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sts", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sts", ["email"], name: "index_sts_on_email", unique: true, using: :btree
  add_index "sts", ["reset_password_token"], name: "index_sts_on_reset_password_token", unique: true, using: :btree

  create_table "studentregs", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.text     "address"
    t.date     "dateofbirth"
    t.string   "grade"
    t.string   "division"
    t.string   "gender"
    t.string   "contactnumber"
    t.string   "bloodgroup"
    t.date     "dateofjoining"
    t.string   "fname"
    t.string   "fqualification"
    t.string   "foccupation"
    t.string   "fincome"
    t.string   "fcontactnumber"
    t.string   "femailid"
    t.string   "mname"
    t.string   "mqualification"
    t.string   "moccupation"
    t.string   "mincome"
    t.string   "mcontactnumber"
    t.string   "memailid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "studs", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "studs", ["email"], name: "index_studs_on_email", unique: true, using: :btree
  add_index "studs", ["reset_password_token"], name: "index_studs_on_reset_password_token", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "views", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true, using: :btree
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true, using: :btree

end
