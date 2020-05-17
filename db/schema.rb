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

ActiveRecord::Schema.define(version: 2020_05_16_103140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authentication_locals", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_authentication_locals_on_user_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.string "title"
    t.date "start_date"
    t.date "finish_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organisation_id", null: false
    t.index ["organisation_id"], name: "index_rosters_on_organisation_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.datetime "start_time"
    t.datetime "finish_time"
    t.string "location"
    t.boolean "cancellation"
    t.string "assigned_volunteers"
    t.string "training_requirements"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "roster_id", null: false
    t.index ["roster_id"], name: "index_shifts_on_roster_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.boolean "volunteer?"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organisation_id", null: false
    t.bigint "user_id", null: false
    t.index ["organisation_id"], name: "index_volunteers_on_organisation_id"
    t.index ["user_id"], name: "index_volunteers_on_user_id"
  end

  add_foreign_key "authentication_locals", "users"
  add_foreign_key "rosters", "organisations"
  add_foreign_key "shifts", "rosters"
  add_foreign_key "volunteers", "organisations"
  add_foreign_key "volunteers", "users"
end
