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

ActiveRecord::Schema.define(version: 2019_11_13_143257) do

  create_table "rcases", force: :cascade do |t|
    t.string "rnumber"
    t.string "rtitle"
    t.string "rdetail"
    t.string "rdivision"
    t.string "rcharge"
    t.datetime "rdate"
    t.string "rstatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rconfigs", force: :cascade do |t|
    t.string "maincode"
    t.string "subcode"
    t.string "title"
    t.string "description"
    t.string "deleteflg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "email"
    t.string "division"
    t.string "team"
    t.string "password_digest"
    t.string "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_digest"
    t.index ["uid"], name: "index_users_on_uid", unique: true
  end

end
