# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_11_012129) do

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "team"
    t.boolean "inGym"
    t.boolean "offSite"
    t.integer "mileage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "hours"
    t.integer "record_id"
    t.index ["record_id"], name: "index_groups_on_record_id"
  end

  create_table "payrolls", force: :cascade do |t|
    t.date "payPeriod"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "records", force: :cascade do |t|
    t.date "workdate"
    t.integer "payroll_id"
    t.decimal "totalHours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "payRate"
  end

end
