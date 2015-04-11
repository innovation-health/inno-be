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

ActiveRecord::Schema.define(version: 20150411195219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documentation_pages", force: :cascade do |t|
    t.string   "title"
    t.string   "permalink"
    t.text     "content"
    t.text     "compiled_content"
    t.integer  "parent_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documentation_screenshots", force: :cascade do |t|
    t.string "alt_text"
  end

  create_table "nifty_attachments", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "parent_type"
    t.string   "token"
    t.string   "digest"
    t.string   "role"
    t.string   "file_name"
    t.string   "file_type"
    t.binary   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "stay_id"
    t.text    "note"
  end

  add_index "notes", ["patient_id"], name: "index_notes_on_patient_id", using: :btree
  add_index "notes", ["stay_id"], name: "index_notes_on_stay_id", using: :btree

  create_table "primary_teams", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "staff_id"
  end

  add_index "primary_teams", ["patient_id"], name: "index_primary_teams_on_patient_id", using: :btree
  add_index "primary_teams", ["staff_id"], name: "index_primary_teams_on_staff_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string  "question"
    t.boolean "resolved"
    t.integer "patient_id"
    t.integer "stay_id"
  end

  create_table "stays", force: :cascade do |t|
    t.integer "patient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token"
    t.boolean  "admin",                  default: false
    t.string   "type"
    t.string   "prefix"
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visits", force: :cascade do |t|
    t.integer "staff_id"
    t.integer "patient_id"
  end

  add_index "visits", ["patient_id"], name: "index_visits_on_patient_id", using: :btree
  add_index "visits", ["staff_id"], name: "index_visits_on_staff_id", using: :btree

end
