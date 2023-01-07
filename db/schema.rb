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

ActiveRecord::Schema[7.0].define(version: 2023_01_07_045021) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "picks", force: :cascade do |t|
    t.bigint "season_id", null: false
    t.bigint "week_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id", "week_id"], name: "index_picks_on_season_id_and_week_id", unique: true
    t.index ["season_id"], name: "index_picks_on_season_id"
    t.index ["week_id"], name: "index_picks_on_week_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_seasons_on_slug", unique: true
  end

  create_table "weeks", force: :cascade do |t|
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_weeks_on_slug", unique: true
  end

  add_foreign_key "picks", "seasons"
  add_foreign_key "picks", "weeks"
end
