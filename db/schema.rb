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

ActiveRecord::Schema.define(version: 2020_06_19_041011) do

  create_table "buses", force: :cascade do |t|
    t.string "tag", null: false
    t.string "current_route"
    t.string "driver"
    t.integer "capacity", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "riders", force: :cascade do |t|
    t.string "name"
    t.integer "commute_time"
    t.integer "bus_id", null: false
    t.boolean "bus_pass"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bus_id"], name: "index_riders_on_bus_id"
  end

  add_foreign_key "riders", "buses"
end
