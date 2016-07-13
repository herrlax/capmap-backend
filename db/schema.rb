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

ActiveRecord::Schema.define(version: 20160713173855) do

  create_table "users", force: :cascade do |t|
    t.string   "oauth_google"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.decimal  "latitude",           precision: 15, scale: 10, default: 25.7516
    t.decimal  "longitude",          precision: 15, scale: 10, default: -80.167
  end

end
