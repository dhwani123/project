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
