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

ActiveRecord::Schema.define(version: 20140111212243) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "level_id"
    t.integer  "grade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", force: true do |t|
    t.string   "name"
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", force: true do |t|
    t.integer  "student_id"
    t.string   "lname"
    t.string   "fname"
    t.integer  "dni"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recordcards", force: true do |t|
    t.integer  "level_id"
    t.integer  "grade_id"
    t.integer  "section_id"
    t.integer  "course_id"
    t.integer  "student_id"
    t.integer  "p1"
    t.integer  "p2"
    t.integer  "p3"
    t.integer  "p4"
    t.integer  "em"
    t.integer  "eb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.string   "name"
    t.integer  "grade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "lname"
    t.string   "fname"
    t.date     "birthday"
    t.text     "address"
    t.string   "phone"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "lname"
    t.string   "fname"
    t.integer  "dni"
    t.date     "birthday"
    t.text     "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.integer  "type_user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
