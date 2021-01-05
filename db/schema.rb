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

ActiveRecord::Schema.define(version: 2021_01_05_163703) do

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

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "icon"
    t.boolean "active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_tools", id: false, force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "tool_id"
    t.index ["game_id"], name: "index_games_tools_on_game_id"
    t.index ["tool_id"], name: "index_games_tools_on_tool_id"
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

  create_table "resources", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "ic", default: 0
    t.integer "rp", default: 0
    t.integer "cp", default: 0
    t.float "ic_bonus", default: 1.0
    t.float "rp_bonus", default: 1.0
    t.float "cp_bonus", default: 1.0
    t.float "efficiency", default: 1.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_resources_on_user_id"
  end

  create_table "sector_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "sector_id"
    t.integer "info", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "notes"
    t.index ["sector_id"], name: "index_sector_users_on_sector_id"
    t.index ["user_id"], name: "index_sector_users_on_user_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.integer "q"
    t.integer "r"
    t.string "sector_type", default: "empty"
    t.string "name"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "notes"
  end

  create_table "systems", force: :cascade do |t|
    t.bigint "sector_id"
    t.bigint "user_id"
    t.integer "slots", default: 0
    t.integer "ic_slots", default: 0
    t.float "ic_bonus", default: 1.0
    t.integer "rp_slots", default: 0
    t.float "rp_bonus", default: 1.0
    t.integer "cp_slots", default: 0
    t.float "cp_bonus", default: 1.0
    t.integer "unrest", default: 0
    t.float "efficiency", default: 1.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mc_slots", default: 0
    t.index ["sector_id"], name: "index_systems_on_sector_id"
    t.index ["user_id"], name: "index_systems_on_user_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "short_title"
    t.string "path"
    t.string "icon"
    t.boolean "master", default: false
    t.integer "sort", default: 0
    t.boolean "active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "player"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "auth_token"
    t.integer "reputation"
    t.bigint "house_id"
    t.index ["house_id"], name: "index_users_on_house_id"
  end

end
