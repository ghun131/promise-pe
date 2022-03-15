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

ActiveRecord::Schema[7.0].define(version: 2022_02_28_151646) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.bigint "money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "promise_id"
  end

  create_table "evidences", force: :cascade do |t|
    t.bigint "promise_id"
    t.string "name"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["promise_id"], name: "index_evidences_on_promise_id"
  end

  create_table "media", force: :cascade do |t|
    t.bigint "evidence_id"
    t.string "url"
    t.string "media_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evidence_id"], name: "index_media_on_evidence_id"
  end

  create_table "promises", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_promises_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "promise_id"
    t.integer "evidence_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "phone"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
