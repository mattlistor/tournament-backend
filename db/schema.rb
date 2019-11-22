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

ActiveRecord::Schema.define(version: 2019_10_16_173807) do

  create_table "brackets", force: :cascade do |t|
    t.json "bracket"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_brackets_on_user_id"
  end

  create_table "columns", force: :cascade do |t|
    t.integer "bracket_id"
    t.integer "tree_placement"
    t.string "name"
    t.boolean "interactive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bracket_id"], name: "index_columns_on_bracket_id"
  end

  create_table "pairs", force: :cascade do |t|
    t.integer "bracket_id"
    t.integer "top_seed_id"
    t.integer "bottom_seed_id"
    t.boolean "interactive"
    t.integer "column_id"
    t.integer "tree_placement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bracket_id"], name: "index_pairs_on_bracket_id"
  end

  create_table "seeds", force: :cascade do |t|
    t.string "name"
    t.string "placement"
    t.integer "seed_num"
    t.integer "bracket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
