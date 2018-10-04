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

ActiveRecord::Schema.define(version: 2018_10_04_192441) do

  create_table "centers", force: :cascade do |t|
    t.string "name_center"
    t.string "address_center"
    t.float "gps_latitude"
    t.float "gps_longitude"
    t.string "email_center"
    t.string "phone_center"
    t.string "schedule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "centers_types", id: false, force: :cascade do |t|
    t.integer "center_id"
    t.integer "type_id"
    t.index ["center_id"], name: "index_centers_types_on_center_id"
    t.index ["type_id"], name: "index_centers_types_on_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "material"
    t.string "description"
    t.integer "goal_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.decimal "document", precision: 15
    t.string "name"
    t.string "surname"
    t.string "account_contract"
    t.date "birth_date"
    t.string "email"
    t.decimal "movil", precision: 15
    t.string "username"
    t.string "password"
    t.datetime "date_reg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vouchers", force: :cascade do |t|
    t.string "metrics"
    t.float "delivered"
    t.datetime "delivery_date"
    t.boolean "verified", default: false
    t.integer "user_id"
    t.integer "type_id"
    t.integer "center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["center_id"], name: "index_vouchers_on_center_id"
    t.index ["type_id"], name: "index_vouchers_on_type_id"
    t.index ["user_id"], name: "index_vouchers_on_user_id"
  end

end
