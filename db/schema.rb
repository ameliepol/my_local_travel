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

ActiveRecord::Schema.define(version: 2020_08_25_141801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.integer "fee"
    t.string "localisation"
    t.integer "mood"
    t.integer "category"
    t.integer "budget"
    t.string "photo_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "content"
  end

  create_table "availabilities", force: :cascade do |t|
    t.bigint "activity_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_availabilities_on_activity_id"
  end

  create_table "days", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trip_id"], name: "index_days_on_trip_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_reviews_on_activity_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "selected_activities", force: :cascade do |t|
    t.bigint "day_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_selected_activities_on_activity_id"
    t.index ["day_id"], name: "index_selected_activities_on_day_id"
  end

  create_table "trips", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id", null: false
    t.string "address"
    t.integer "radius"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.string "photo_url"
    t.text "description"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "availabilities", "activities"
  add_foreign_key "days", "trips"
  add_foreign_key "reviews", "activities"
  add_foreign_key "reviews", "users"
  add_foreign_key "selected_activities", "activities"
  add_foreign_key "selected_activities", "days"
  add_foreign_key "trips", "users"
end
