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

ActiveRecord::Schema.define(version: 2020_03_06_141415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "groups", force: :cascade do |t|
    t.string "status"
    t.string "region"
    t.string "designation"
    t.string "winemaker_profile"
    t.string "deferred_remuneration"
    t.string "services", array: true
    t.integer "votes"
    t.integer "profitability"
    t.integer "share_available"
    t.integer "investment_total"
    t.integer "ticket_amount"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["user_id"], name: "index_groups_on_user_id"
  end

  create_table "investments", force: :cascade do |t|
    t.string "investment_name"
    t.text "punchline"
    t.string "winemaker_name"
    t.string "domaine_name"
    t.text "description"
    t.boolean "bio"
    t.string "region"
    t.string "designation"
    t.integer "ticket_amount"
    t.integer "investment_total"
    t.integer "share_available"
    t.integer "total_share"
    t.integer "profitability"
    t.string "remuneration"
    t.string "winemaker_profile"
    t.boolean "deferred_remuneration"
    t.date "date_of_end"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "group_id"
    t.index ["group_id"], name: "index_investments_on_group_id"
    t.index ["user_id"], name: "index_investments_on_user_id"
  end

  create_table "investments_groups", force: :cascade do |t|
    t.bigint "investment_id", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_investments_groups_on_group_id"
    t.index ["investment_id"], name: "index_investments_groups_on_investment_id"
  end

  create_table "offered_services", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "investment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investment_id"], name: "index_offered_services_on_investment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_groups", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.index ["group_id"], name: "index_users_groups_on_group_id"
    t.index ["user_id"], name: "index_users_groups_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "groups", "users"
  add_foreign_key "investments", "groups"
  add_foreign_key "investments", "users"
  add_foreign_key "investments_groups", "groups"
  add_foreign_key "investments_groups", "investments"
  add_foreign_key "offered_services", "investments"
  add_foreign_key "users_groups", "groups"
  add_foreign_key "users_groups", "users"
end
