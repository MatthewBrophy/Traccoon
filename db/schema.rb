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

ActiveRecord::Schema.define(version: 2019_03_08_003911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "raccoon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comment_text"
    t.string "comment_title"
    t.index ["raccoon_id"], name: "index_comments_on_raccoon_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "neighborhood_id"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighborhood_id"], name: "index_locations_on_neighborhood_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "raccoon_parties", force: :cascade do |t|
    t.bigint "raccoon_id"
    t.bigint "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["raccoon_id"], name: "index_raccoon_parties_on_raccoon_id"
    t.index ["report_id"], name: "index_raccoon_parties_on_report_id"
  end

  create_table "raccoons", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "size"
    t.string "gender"
    t.string "favorite_food"
    t.string "disposition"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["user_id"], name: "index_raccoons_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.datetime "time"
    t.bigint "user_id"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "neighborhood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "raccoons"
  add_foreign_key "comments", "users"
  add_foreign_key "locations", "neighborhoods"
  add_foreign_key "raccoon_parties", "raccoons"
  add_foreign_key "raccoon_parties", "reports"
  add_foreign_key "reports", "users"
end
