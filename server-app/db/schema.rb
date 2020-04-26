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

ActiveRecord::Schema.define(version: 2020_04_26_205238) do

  create_table "casereports", force: :cascade do |t|
    t.string "report_type"
    t.string "symptoms"
    t.string "testrequested"
    t.string "date_testrequested"
    t.integer "location_id"
    t.integer "connection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["connection_id"], name: "index_casereports_on_connection_id"
    t.index ["location_id"], name: "index_casereports_on_location_id"
  end

  create_table "connections", force: :cascade do |t|
    t.string "connection_type"
    t.integer "user_id"
    t.integer "person_id"
    t.index ["person_id"], name: "index_connections_on_person_id"
    t.index ["user_id"], name: "index_connections_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_type"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zipcode"
    t.string "mapcordinates"
  end

  create_table "locations_people", force: :cascade do |t|
    t.integer "location_id"
    t.integer "person_id"
    t.index ["location_id"], name: "index_locations_people_on_location_id"
    t.index ["person_id"], name: "index_locations_people_on_person_id"
  end

  create_table "locations_users", force: :cascade do |t|
    t.integer "location_id"
    t.integer "user_id"
    t.index ["location_id"], name: "index_locations_users_on_location_id"
    t.index ["user_id"], name: "index_locations_users_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "message_content"
    t.integer "connection_id"
    t.datetime "created_at"
    t.datetime "updated_at"    
    t.index ["connection_id"], name: "index_notifications_on_connection_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "mobile"
    t.string "qrcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: :cascade do |t|
    t.string "testperson_id"
    t.string "testtype"
    t.string "testkit_name"
    t.string "testkit_identifier"
    t.string "result"
    t.string "date_testadmin"
    t.string "date_testresult"
    t.integer "casereport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["casereport_id"], name: "index_tests_on_casereport_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "mobile"
    t.string "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
