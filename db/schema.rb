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

ActiveRecord::Schema.define(version: 2020_09_13_005756) do

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

  create_table "contributors", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.bigint "role_term_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_term_id"], name: "index_contributors_on_role_term_id"
    t.index ["work_id"], name: "index_contributors_on_work_id"
  end

  create_table "related_links", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.string "link_title"
    t.string "url", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["work_id"], name: "index_related_links_on_work_id"
  end

  create_table "related_works", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.string "citation", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["work_id"], name: "index_related_works_on_work_id"
  end

  create_table "role_terms", force: :cascade do |t|
    t.string "label", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "works", force: :cascade do |t|
    t.string "druid"
    t.integer "version"
    t.string "title", null: false
    t.string "work_type", null: false
    t.string "subtype", null: false
    t.string "contact_email", null: false
    t.string "created_etdf", null: false
    t.text "abstract", null: false
    t.string "citation", null: false
    t.string "access", null: false
    t.date "embargo_date"
    t.string "license", null: false
    t.boolean "agree_to_terms", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["druid", "version"], name: "index_works_on_druid_and_version", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "contributors", "role_terms"
  add_foreign_key "contributors", "works"
  add_foreign_key "related_links", "works"
  add_foreign_key "related_works", "works"
end