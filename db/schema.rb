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

ActiveRecord::Schema.define(version: 20141201114809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", force: true do |t|
    t.string   "article_number"
    t.string   "title"
    t.text     "description"
    t.decimal  "price",               precision: 8, scale: 2
    t.integer  "article_group_id"
    t.integer  "manufacturer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "artpic_file_name"
    t.string   "artpic_content_type"
    t.integer  "artpic_file_size"
    t.datetime "artpic_updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "countrycode"
    t.string   "continent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", force: true do |t|
    t.string   "name"
    t.string   "add1"
    t.string   "add2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "url"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
