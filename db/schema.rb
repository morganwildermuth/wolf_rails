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

ActiveRecord::Schema.define(version: 20131220110628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.string  "season",  default: "Summer"
    t.integer "year",    default: 0
    t.integer "user_id"
  end

  create_table "locations", force: true do |t|
    t.string  "name"
    t.integer "food",    default: 0
    t.integer "danger",  default: 0
    t.integer "game_id"
  end

  create_table "users", force: true do |t|
    t.string  "username"
    t.string  "password_confirmation"
    t.string  "password_digest"
    t.boolean "ready_to_play",         default: false
  end

  create_table "wolves", force: true do |t|
    t.string  "name"
    t.integer "age",     default: 0
    t.string  "gender"
    t.integer "health",  default: 100
    t.integer "user_id"
  end

end
