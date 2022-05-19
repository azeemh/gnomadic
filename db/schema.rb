# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_19_074554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communities", force: :cascade do |t|
    t.string "name"
    t.text "mission"
    t.text "calendar"
    t.bigint "gnomeparcel_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gnomeparcel_id"], name: "index_communities_on_gnomeparcel_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "starttime"
    t.datetime "endtime"
    t.bigint "community_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["community_id"], name: "index_events_on_community_id"
  end

  create_table "gnomeparcels", force: :cascade do |t|
    t.text "landaddress"
    t.boolean "open_to_visitors"
    t.boolean "open_to_new_members"
    t.string "latlong"
    t.integer "waterbodies"
    t.text "maps"
    t.integer "population"
    t.integer "maxcapacity"
    t.text "vision"
    t.integer "landhookups"
    t.boolean "roadaccess"
    t.string "seasonalhazards"
    t.boolean "water"
    t.boolean "electric"
    t.boolean "sewage"
    t.boolean "wifi"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_gnomeparcels_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "community_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["community_id"], name: "index_roles_on_community_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "pronouns"
    t.boolean "has_land"
    t.decimal "acreage"
    t.decimal "footage"
    t.integer "open_spaces"
    t.text "land_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "communities", "gnomeparcels"
  add_foreign_key "events", "communities"
  add_foreign_key "gnomeparcels", "users"
  add_foreign_key "roles", "communities"
end
