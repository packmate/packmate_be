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

ActiveRecord::Schema.define(version: 2023_07_06_195256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_tags", force: :cascade do |t|
    t.bigint "items_id"
    t.bigint "tags_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["items_id"], name: "index_item_tags_on_items_id"
    t.index ["tags_id"], name: "index_item_tags_on_tags_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_items", force: :cascade do |t|
    t.bigint "lists_id"
    t.bigint "items_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["items_id"], name: "index_list_items_on_items_id"
    t.index ["lists_id"], name: "index_list_items_on_lists_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "type"
    t.string "travelers"
    t.string "destination"
    t.date "date"
    t.integer "duration"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_lists_on_users_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "item_tags", "items", column: "items_id"
  add_foreign_key "item_tags", "tags", column: "tags_id"
  add_foreign_key "list_items", "items", column: "items_id"
  add_foreign_key "list_items", "lists", column: "lists_id"
  add_foreign_key "lists", "users", column: "users_id"
end
