# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160212180146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "curriculums", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "level"
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "rating"
  end

  add_index "curriculums", ["topic_id"], name: "index_curriculums_on_topic_id", using: :btree
  add_index "curriculums", ["user_id"], name: "index_curriculums_on_user_id", using: :btree

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "curriculum_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "subscriptions", ["curriculum_id"], name: "index_subscriptions_on_curriculum_id", using: :btree
  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id", using: :btree

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "urlID"
    t.string   "thumbnail"
    t.integer  "order"
    t.text     "description"
    t.string   "title"
    t.integer  "curriculum_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "videos", ["curriculum_id"], name: "index_videos_on_curriculum_id", using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "value"
    t.integer  "user_id"
    t.integer  "video_id"
    t.integer  "curriculum_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "votes", ["curriculum_id"], name: "index_votes_on_curriculum_id", using: :btree
  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree
  add_index "votes", ["video_id"], name: "index_votes_on_video_id", using: :btree

  add_foreign_key "curriculums", "topics"
  add_foreign_key "curriculums", "users"
  add_foreign_key "subscriptions", "curriculums"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "videos", "curriculums"
  add_foreign_key "votes", "curriculums"
  add_foreign_key "votes", "users"
  add_foreign_key "votes", "videos"
end
