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

ActiveRecord::Schema.define(version: 20131126201035) do

  create_table "action_blocks", force: true do |t|
    t.string   "scene_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "act_id"
  end

  create_table "acts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "screenplay_id"
  end

  create_table "block_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "block_id"
  end

  create_table "blocks", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "block_type_id"
    t.text     "body"
    t.integer  "screenplay_id"
    t.integer  "order_value"
  end

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dialogues", force: true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "act_id"
  end

  create_table "scene_headings", force: true do |t|
    t.string   "location"
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "act_id"
  end

  create_table "screenplays", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transitions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "act_id"
  end

end
