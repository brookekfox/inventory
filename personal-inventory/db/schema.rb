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

ActiveRecord::Schema.define(version: 20150217172438) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "year"
    t.string   "genre"
    t.boolean  "loaned_out"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comics", force: true do |t|
    t.string   "title"
    t.float    "number"
    t.string   "publisher"
    t.string   "comic_box"
    t.boolean  "loaned_out"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graphic_novels", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.float    "number"
    t.string   "publisher"
    t.boolean  "loaned_out"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "title"
    t.integer  "year"
    t.string   "director"
    t.string   "writer"
    t.string   "format"
    t.integer  "rotten_tomatoes"
    t.boolean  "loaned_out"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tv_seasons", force: true do |t|
    t.string   "title"
    t.integer  "season"
    t.integer  "year"
    t.string   "show_runner"
    t.string   "network"
    t.string   "format"
    t.boolean  "loaned_out"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
