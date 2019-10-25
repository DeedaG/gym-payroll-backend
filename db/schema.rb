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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_10_10_124638) do
=======
ActiveRecord::Schema.define(version: 2019_10_21_012307) do
>>>>>>> 6226bb2834bb73574d4148eab2c06641e8f921fa

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
    t.date "workDay"
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
    t.decimal "rate"
  end

end
