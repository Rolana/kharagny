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

ActiveRecord::Schema.define(version: 20141110184832) do

  create_table "Reports", force: true do |t|
    t.string  "title"
    t.string  "content"
    t.string  "reportable_type"
    t.integer "reportable_id"
    t.integer "users_id"
  end

  create_table "comment", force: true do |t|
    t.integer "post_id"
    t.integer "users_id"
    t.string  "content"
    t.date    "created_at"
    t.date    "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.integer  "number_of_memberss"
    t.integer  "users_id"
    t.string   "description"
    t.datetime "start_time",         null: false
    t.datetime "end_time"
    t.boolean  "reminder"
  end

  create_table "friendships", force: true do |t|
    t.integer  "users_id"
    t.integer  "friend_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string  "name"
    t.string  "image_url"
    t.integer "number_of_memberss"
    t.integer "users_id"
  end

  create_table "notifications", force: true do |t|
    t.integer  "user_id"
    t.string   "event_type"
    t.string   "event_id"
    t.boolean  "read",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: true do |t|
    t.string  "district"
    t.string  "name"
    t.string  "genre"
    t.integer "visits"
    t.integer "rating"
  end

  create_table "post", force: true do |t|
    t.integer "users_id"
    t.string  "content"
    t.date    "created_at"
    t.date    "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.integer  "users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.string   "firstname"
    t.string   "lastname"
    t.string   "image_url"
    t.string   "gender"
    t.string   "city"
    t.string   "country"
    t.date     "dateOfBirth"
    t.string   "auth_provider"
    t.string   "auth_uid"
    t.text     "auth_token"
    t.text     "auth_secret"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
