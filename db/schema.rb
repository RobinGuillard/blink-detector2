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

ActiveRecord::Schema.define(version: 20161203192403) do

  create_table "alerts", force: :cascade do |t|
    t.integer  "heures"
    t.integer  "minutes"
    t.string   "lieu"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blinks", force: :cascade do |t|
    t.string   "event"
    t.string   "string"
    t.datetime "datetime"
    t.time     "time"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "blinks", ["user_id"], name: "index_blinks_on_user_id"

  create_table "concentrations", force: :cascade do |t|
    t.integer  "concentration_level"
    t.float    "concentration_value"
    t.datetime "datetime"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "eeg_events", force: :cascade do |t|
    t.string   "event"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eegs", force: :cascade do |t|
    t.string   "event"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
