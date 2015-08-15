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

ActiveRecord::Schema.define(version: 20150813191618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "downvotes", force: :cascade do |t|
    t.integer  "playlist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "word"
    t.string   "lives"
    t.string   "underscore_array"
    t.string   "word_array"
    t.string   "available_letters"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "host_name"
    t.string   "player_name"
    t.string   "player_cell"
    t.string   "player_email"
    t.string   "chosen_letters"
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "image"
    t.text     "description"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "plays", force: :cascade do |t|
    t.text     "guess"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "plays", ["game_id"], name: "index_plays_on_game_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "username"
    t.string   "avatar"
    t.text     "about_me"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "profiles", ["username"], name: "index_profiles_on_username", unique: true, using: :btree

  create_table "responses", force: :cascade do |t|
    t.text     "comment"
    t.text     "html"
    t.text     "css"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "submission_id"
    t.integer  "user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "playlist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reviews", ["playlist_id"], name: "index_reviews_on_playlist_id", using: :btree

  create_table "submissions", force: :cascade do |t|
    t.string   "title"
    t.text     "entry"
    t.text     "html"
    t.text     "css"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "playlist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "plays", "games"
  add_foreign_key "reviews", "playlists"
end