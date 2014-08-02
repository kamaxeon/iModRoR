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

ActiveRecord::Schema.define(version: 20140802134436) do

  create_table "alarms", force: true do |t|
    t.integer  "meter_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alarms", ["meter_id"], name: "index_alarms_on_meter_id"

  create_table "lectures", force: true do |t|
    t.integer  "meter_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lectures", ["meter_id"], name: "index_lectures_on_meter_id"

  create_table "meter_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "unit"
    t.integer  "lecture_id"
    t.integer  "alarm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meters", force: true do |t|
    t.integer  "propertry_id"
    t.integer  "meter_type_id"
    t.integer  "mbus_address"
    t.boolean  "sent_alert"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meters", ["meter_type_id"], name: "index_meters_on_meter_type_id"
  add_index "meters", ["propertry_id"], name: "index_meters_on_propertry_id"

  create_table "properties", force: true do |t|
    t.string   "floor"
    t.string   "number"
    t.string   "letter"
    t.string   "stair"
    t.string   "portal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
