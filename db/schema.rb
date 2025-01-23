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

ActiveRecord::Schema[8.0].define(version: 2025_01_23_223827) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "logs", force: :cascade do |t|
    t.string "token"
    t.bigint "quote_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user"
    t.integer "rating", default: 0
    t.index ["quote_id"], name: "index_logs_on_quote_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "data"
    t.string "author"
    t.integer "display_count", default: 0
    t.boolean "enabled", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uuid"
    t.index ["uuid"], name: "index_quotes_on_uuid"
  end

  add_foreign_key "logs", "quotes"
end
