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

ActiveRecord::Schema.define(version: 20201208223451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armies", primary_key: "aid", force: :cascade do |t|
    t.string "visibility", array: true
    t.boolean "visible"
    t.string "kingdom"
    t.string "location"
    t.string "lord"
    t.string "name"
    t.string "position"
    t.string "mission"
    t.string "status"
    t.string "armytype"
    t.integer "num"
    t.integer "vet"
    t.integer "armour"
    t.integer "morale"
    t.boolean "infantry"
    t.boolean "cavalry"
    t.boolean "marine"
    t.string "boat"
    t.boolean "flagship"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.integer "fid"
    t.string "name"
    t.string "members"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "branch", default: "Elder"
  end

  create_table "houses", force: :cascade do |t|
    t.integer "hid"
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer "lid"
    t.string "name_es"
    t.string "name_en"
    t.string "location_type"
    t.string "kingdom"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "x"
    t.float "y"
    t.bigint "family_id"
    t.integer "visibility", default: 1
    t.index ["family_id"], name: "index_locations_on_family_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "difficulty"
    t.string "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "factors", array: true
    t.string "results", array: true
  end

  create_table "systems", force: :cascade do |t|
    t.string "name"
    t.integer "slots", default: 0
    t.integer "ic", default: 0
    t.integer "rp", default: 0
    t.integer "cp", default: 0
    t.string "traits"
    t.text "desc"
    t.integer "x", default: 0
    t.integer "z", default: 0
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_systems_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "player"
    t.string "house"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "auth_token"
    t.integer "reputation"
  end

  add_foreign_key "systems", "users"
end
