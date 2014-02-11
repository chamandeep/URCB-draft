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

ActiveRecord::Schema.define(version: 20140210222122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_drivers", force: true do |t|
    t.integer  "driver_id"
    t.integer  "car_id"
    t.string   "drives"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: true do |t|
    t.string   "name"
    t.integer  "door"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "qualification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disabilities", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drivers", force: true do |t|
    t.string   "name"
    t.string   "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "university_id"
    t.date     "startDate"
    t.date     "endDate"
    t.text     "accessibilityReview"
    t.text     "supportRequested"
    t.boolean  "supportReceived"
    t.text     "reason"
    t.decimal  "disabilityDeptRating", precision: 2, scale: 2
    t.decimal  "courseDeptRating",     precision: 2, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendships", ["followed_id"], name: "index_friendships_on_followed_id", using: :btree
  add_index "friendships", ["follower_id", "followed_id"], name: "index_friendships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "friendships", ["follower_id"], name: "index_friendships_on_follower_id", using: :btree

  create_table "universities", force: true do |t|
    t.string   "name"
    t.text     "url"
    t.text     "disabilityURL"
    t.decimal  "disabilityDeptRating", precision: 2, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_disabilities", force: true do |t|
    t.integer  "disability_id"
    t.integer  "user_id"
    t.string   "severity"
    t.text     "supportRequired"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "password"
    t.integer  "userType"
    t.date     "dob"
    t.text     "bio"
    t.string   "address1"
    t.string   "address2"
    t.string   "town"
    t.string   "county"
    t.string   "country"
    t.string   "postcode"
    t.string   "contactNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
