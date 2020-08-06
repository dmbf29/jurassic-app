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

ActiveRecord::Schema.define(version: 2020_08_06_081642) do

  create_table "dinosaurs", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "park_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_dinosaurs_on_park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.string "banner_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pockets", force: :cascade do |t|
    t.integer "weapon_id", null: false
    t.integer "dinosaur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dinosaur_id"], name: "index_pockets_on_dinosaur_id"
    t.index ["weapon_id"], name: "index_pockets_on_weapon_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dinosaurs", "parks"
  add_foreign_key "pockets", "dinosaurs"
  add_foreign_key "pockets", "weapons"
end
