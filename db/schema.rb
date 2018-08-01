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

ActiveRecord::Schema.define(version: 2018_08_01_163329) do

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

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_comments_on_student_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "workshop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_enrollments_on_student_id"
    t.index ["workshop_id"], name: "index_enrollments_on_workshop_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "title"
    t.bigint "workshop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workshop_id"], name: "index_materials_on_workshop_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.integer "year"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.string "rut"
    t.string "address"
    t.string "phone"
    t.text "specialty"
    t.text "motivation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "topics", force: :cascade do |t|
    t.bigint "workshop_id"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id"
    t.index ["student_id"], name: "index_topics_on_student_id"
    t.index ["workshop_id"], name: "index_topics_on_workshop_id"
  end

  create_table "workshops", force: :cascade do |t|
    t.integer "mentor_id"
    t.string "title"
    t.text "description"
    t.text "schedule"
    t.integer "quotas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "semester_id"
    t.index ["semester_id"], name: "index_workshops_on_semester_id"
  end

  add_foreign_key "comments", "students"
  add_foreign_key "enrollments", "students"
  add_foreign_key "enrollments", "workshops"
  add_foreign_key "materials", "workshops"
  add_foreign_key "topics", "students"
  add_foreign_key "topics", "workshops"
  add_foreign_key "workshops", "semesters"
end
