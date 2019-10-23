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

ActiveRecord::Schema.define(version: 20190604171615) do

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
    t.string "house"
    t.integer "hid"
    t.string "location_type"
    t.string "kingdom"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "difficulty"
    t.string "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "player"
    t.string "house"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "auth_token"
  end

end
