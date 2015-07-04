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

ActiveRecord::Schema.define(version: 20150704230634) do

  create_table "appetizers", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appetizers", ["name"], name: "index_appetizers_on_name"

  create_table "casseroledishes", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casseroledishes", ["name"], name: "index_casseroledishes_on_name"

  create_table "chefrecommends", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chefrecommends", ["name"], name: "index_chefrecommends_on_name"

  create_table "chickenducks", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chickenducks", ["name"], name: "index_chickenducks_on_name"

  create_table "chowfuns", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chowfuns", ["name"], name: "index_chowfuns_on_name"

  create_table "congeeincasseroles", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "congeeincasseroles", ["name"], name: "index_congeeincasseroles_on_name"

  create_table "lomeins", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lomeins", ["name"], name: "index_lomeins_on_name"

  create_table "lunchspecials", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lunchspecials", ["name"], name: "index_lunchspecials_on_name"

  create_table "pins", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "price"
    t.string   "foodtype"
  end

  create_table "porkbeefs", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "porkbeefs", ["name"], name: "index_porkbeefs_on_name"

  create_table "ricedishes", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ricedishes", ["name"], name: "index_ricedishes_on_name"

  create_table "riceincasseroles", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "riceincasseroles", ["name"], name: "index_riceincasseroles_on_name"

  create_table "seafoods", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seafoods", ["name"], name: "index_seafoods_on_name"

  create_table "shells", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shells", ["name"], name: "index_shells_on_name"

  create_table "sizzlingplates", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sizzlingplates", ["name"], name: "index_sizzlingplates_on_name"

  create_table "soups", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "soups", ["name"], name: "index_soups_on_name"

  create_table "vegetables", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vegetables", ["name"], name: "index_vegetables_on_name"

end
