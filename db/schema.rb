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

ActiveRecord::Schema.define(version: 20181206164955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "job_applications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "job_applications", ["company_id"], name: "index_job_applications_on_company_id", using: :btree
  add_index "job_applications", ["job_id"], name: "index_job_applications_on_job_id", using: :btree
  add_index "job_applications", ["user_id"], name: "index_job_applications_on_user_id", using: :btree

  create_table "jobs", force: :cascade do |t|
    t.string   "job_title"
    t.string   "location"
    t.string   "description"
    t.string   "preferred_experience"
    t.integer  "salary"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "company_id"
  end

  add_index "jobs", ["company_id"], name: "index_jobs_on_company_id", using: :btree

  create_table "user_companies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_companies", ["company_id"], name: "index_user_companies_on_company_id", using: :btree
  add_index "user_companies", ["user_id"], name: "index_user_companies_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "job_applications", "companies"
  add_foreign_key "job_applications", "jobs"
  add_foreign_key "job_applications", "users"
  add_foreign_key "jobs", "companies"
  add_foreign_key "user_companies", "companies"
  add_foreign_key "user_companies", "users"
end
