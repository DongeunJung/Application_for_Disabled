# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_01_075307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accom_comments", force: :cascade do |t|
    t.integer "accom_id"
    t.integer "member_id"
    t.string "member_name"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "accom_details", force: :cascade do |t|
    t.integer "accom_id"
    t.string "address"
    t.string "telephone"
    t.string "homepage"
    t.string "accessible"
    t.string "parking"
    t.string "isflat"
    t.string "elevator"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "accoms", force: :cascade do |t|
    t.integer "seq"
    t.string "name"
    t.string "gu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "histories", force: :cascade do |t|
    t.integer "member_id"
    t.integer "seq"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restr_comments", force: :cascade do |t|
    t.integer "restr_id"
    t.integer "member_id"
    t.string "member_name"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restr_details", force: :cascade do |t|
    t.integer "restr_id"
    t.string "address"
    t.string "telephone"
    t.string "homepage"
    t.string "accessible"
    t.string "parking"
    t.string "isflat"
    t.string "elevator"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restrs", force: :cascade do |t|
    t.integer "seq"
    t.string "name"
    t.string "gu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
