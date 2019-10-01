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

ActiveRecord::Schema.define(version: 2019_10_01_173526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user1_id"
    t.bigint "user2_id"
    t.bigint "user3_id"
    t.index ["user1_id"], name: "index_groups_on_user1_id"
    t.index ["user2_id"], name: "index_groups_on_user2_id"
    t.index ["user3_id"], name: "index_groups_on_user3_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "groups_id"
    t.string "type_of_the_room"
    t.boolean "paid", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["groups_id"], name: "index_reservations_on_groups_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "groups", "users", column: "user1_id", on_delete: :restrict
  add_foreign_key "groups", "users", column: "user2_id", on_delete: :restrict
  add_foreign_key "groups", "users", column: "user3_id", on_delete: :restrict
  add_foreign_key "reservations", "groups", column: "groups_id"
end
