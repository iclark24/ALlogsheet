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

ActiveRecord::Schema.define(version: 2018_11_19_223159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventures", force: :cascade do |t|
    t.string "name"
    t.string "notes"
    t.bigint "logsheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["logsheet_id"], name: "index_adventures_on_logsheet_id"
  end

  create_table "charclasses", force: :cascade do |t|
    t.string "name"
    t.integer "lvls"
    t.bigint "logsheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["logsheet_id"], name: "index_charclasses_on_logsheet_id"
  end

  create_table "logsheets", force: :cascade do |t|
    t.string "char"
    t.float "gold"
    t.integer "downtime"
    t.integer "renown"
    t.string "race"
    t.string "dci"
    t.integer "exp"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_logsheets_on_user_id"
  end

  create_table "magicitems", force: :cascade do |t|
    t.string "name"
    t.boolean "consumable"
    t.integer "tcpvalue"
    t.bigint "logsheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["logsheet_id"], name: "index_magicitems_on_logsheet_id"
  end

  create_table "tierfourtcps", force: :cascade do |t|
    t.integer "amount"
    t.bigint "logsheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["logsheet_id"], name: "index_tierfourtcps_on_logsheet_id"
  end

  create_table "tieronetcps", force: :cascade do |t|
    t.integer "amount"
    t.bigint "logsheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["logsheet_id"], name: "index_tieronetcps_on_logsheet_id"
  end

  create_table "tierthreetcps", force: :cascade do |t|
    t.integer "amount"
    t.bigint "logsheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["logsheet_id"], name: "index_tierthreetcps_on_logsheet_id"
  end

  create_table "tiertwotcps", force: :cascade do |t|
    t.integer "amount"
    t.bigint "logsheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["logsheet_id"], name: "index_tiertwotcps_on_logsheet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "adventures", "logsheets"
  add_foreign_key "charclasses", "logsheets"
  add_foreign_key "logsheets", "users"
  add_foreign_key "magicitems", "logsheets"
  add_foreign_key "tierfourtcps", "logsheets"
  add_foreign_key "tieronetcps", "logsheets"
  add_foreign_key "tierthreetcps", "logsheets"
  add_foreign_key "tiertwotcps", "logsheets"
end
