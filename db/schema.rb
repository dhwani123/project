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

ActiveRecord::Schema.define(version: 20140322184057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "addassets", force: true do |t|
    t.string   "item"
    t.string   "type"
    t.string   "category"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "assets", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "tp"
    t.string   "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authorizes", force: true do |t|
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
    t.string   "username"
  end

  add_index "authorizes", ["email"], name: "index_authorizes_on_email", unique: true, using: :btree
  add_index "authorizes", ["reset_password_token"], name: "index_authorizes_on_reset_password_token", unique: true, using: :btree

  create_table "comments", force: true do |t|
    t.integer  "post_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "postedby"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree

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

  create_table "employes", force: true do |t|
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
    t.string   "username"
  end

  add_index "employes", ["email"], name: "index_employes_on_email", unique: true, using: :btree
  add_index "employes", ["reset_password_token"], name: "index_employes_on_reset_password_token", unique: true, using: :btree

  create_table "emps", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "emps", ["email"], name: "index_emps_on_email", unique: true, using: :btree
  add_index "emps", ["reset_password_token"], name: "index_emps_on_reset_password_token", unique: true, using: :btree

  create_table "hrs", force: true do |t|
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
    t.string   "username"
  end

  add_index "hrs", ["email"], name: "index_hrs_on_email", unique: true, using: :btree
  add_index "hrs", ["reset_password_token"], name: "index_hrs_on_reset_password_token", unique: true, using: :btree

  create_table "locations", force: true do |t|
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pos", force: true do |t|
    t.string   "pono"
    t.string   "invoiceno"
    t.string   "vname"
    t.string   "vadd"
    t.string   "pod"
    t.string   "requisitioner"
    t.string   "fwdto"
    t.string   "approvedby"
    t.string   "terms"
    t.string   "name"
    t.string   "particular"
    t.string   "unit"
    t.integer  "qty"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "postedby"
    t.integer  "postedbyid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cubestudent_id"
    t.string   "subject_tokens"
    t.integer  "votes"
  end

  create_table "rates", force: true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type", using: :btree
  add_index "rates", ["rater_id"], name: "index_rates_on_rater_id", using: :btree

  create_table "realassets", force: true do |t|
    t.string   "name"
    t.string   "typ"
    t.string   "locat"
    t.string   "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "replications", force: true do |t|
    t.integer  "sr_no"
    t.string   "particular"
    t.string   "unit"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requisitions", force: true do |t|
    t.string   "name"
    t.string   "particular"
    t.string   "unit"
    t.integer  "quantity"
    t.string   "from"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total"
  end

  create_table "rs_evaluations", force: true do |t|
    t.string   "reputation_name"
    t.integer  "source_id"
    t.string   "source_type"
    t.integer  "target_id"
    t.string   "target_type"
    t.float    "value",           default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rs_evaluations", ["reputation_name", "source_id", "source_type", "target_id", "target_type"], name: "index_rs_evaluations_on_reputation_name_and_source_and_target", unique: true, using: :btree
  add_index "rs_evaluations", ["reputation_name"], name: "index_rs_evaluations_on_reputation_name", using: :btree
  add_index "rs_evaluations", ["source_id", "source_type"], name: "index_rs_evaluations_on_source_id_and_source_type", using: :btree
  add_index "rs_evaluations", ["target_id", "target_type"], name: "index_rs_evaluations_on_target_id_and_target_type", using: :btree

  create_table "rs_reputation_messages", force: true do |t|
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "receiver_id"
    t.float    "weight",      default: 1.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rs_reputation_messages", ["receiver_id", "sender_id", "sender_type"], name: "index_rs_reputation_messages_on_receiver_id_and_sender", unique: true, using: :btree
  add_index "rs_reputation_messages", ["receiver_id"], name: "index_rs_reputation_messages_on_receiver_id", using: :btree
  add_index "rs_reputation_messages", ["sender_id", "sender_type"], name: "index_rs_reputation_messages_on_sender_id_and_sender_type", using: :btree

  create_table "rs_reputations", force: true do |t|
    t.string   "reputation_name"
    t.float    "value",           default: 0.0
    t.string   "aggregated_by"
    t.integer  "target_id"
    t.string   "target_type"
    t.boolean  "active",          default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rs_reputations", ["reputation_name", "target_id", "target_type"], name: "index_rs_reputations_on_reputation_name_and_target", unique: true, using: :btree
  add_index "rs_reputations", ["reputation_name"], name: "index_rs_reputations_on_reputation_name", using: :btree
  add_index "rs_reputations", ["target_id", "target_type"], name: "index_rs_reputations_on_target_id_and_target_type", using: :btree

  create_table "snehs", force: true do |t|
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "studentregs", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.text     "address"
    t.string   "dateofbirth"
    t.string   "grade"
    t.string   "division"
    t.string   "gender"
    t.string   "contactnumber"
    t.string   "bloodgroup"
    t.string   "dateofjoining"
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
    t.string   "myemail"
    t.string   "avatar"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree

  create_table "tags", force: true do |t|
    t.string "name"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "location"
    t.string   "ph_no"
    t.string   "mobile_no"
    t.string   "asset_name"
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

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
