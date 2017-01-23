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

ActiveRecord::Schema.define(version: 20170122043440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "addr1"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "loc_type"
    t.integer  "group_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "location_name"
  end

  create_table "group_resources", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "resource_id"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.string   "base_phone"
    t.string   "photo"
    t.string   "icon"
    t.string   "local_meetup"
    t.string   "remote_meetup"
    t.string   "crisis_contact_first_name"
    t.string   "crisis_contact_last_name"
    t.string   "cc_home_phone"
    t.string   "cc_cell_phone"
    t.string   "cc_email"
    t.string   "cc_zip"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id"
  end

  create_table "member_resources", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "resource_id"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "member_type"
    t.string   "gender"
    t.integer  "group_id"
    t.boolean  "active",        default: true
    t.string   "work_phone"
    t.string   "cell_phone"
    t.string   "email"
    t.string   "photo"
    t.text     "special_needs"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string   "category"
    t.text     "description"
    t.string   "owner"
    t.integer  "quantity_required"
    t.string   "unit_of_measure"
    t.string   "icon"
    t.string   "image"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
  end

end
