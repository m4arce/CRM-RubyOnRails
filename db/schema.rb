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

ActiveRecord::Schema.define(version: 2022_03_05_150343) do

  create_table "conversations", charset: "utf8mb4", force: :cascade do |t|
    t.string "detalle"
    t.bigint "prospect_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prospect_id"], name: "index_conversations_on_prospect_id"
  end

  create_table "prospects", charset: "utf8mb4", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "email"
    t.bigint "status_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["status_id"], name: "index_prospects_on_status_id"
    t.index ["user_id"], name: "index_prospects_on_user_id"
  end

  create_table "statuses", charset: "utf8mb4", force: :cascade do |t|
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "conversations", "prospects"
  add_foreign_key "prospects", "statuses"
  add_foreign_key "prospects", "users"
end
