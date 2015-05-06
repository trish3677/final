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

ActiveRecord::Schema.define(version: 0) do

  create_table "cuisines", force: :cascade do |t|
    t.integer "cuisine_id"
    t.text    "description"
    t.string  "cuisine_name"
  end

  add_index "cuisines", ["cuisine_id"], name: "index_cuisines_on_cuisine_id"

  create_table "locations", force: :cascade do |t|
    t.integer "neighborhood_id"
    t.integer "restaurant_id"
  end

  add_index "locations", ["neighborhood_id"], name: "index_locations_on_neighborhood_id"
  add_index "locations", ["restaurant_id"], name: "index_locations_on_restaurant_id"

  create_table "neighborhoods", force: :cascade do |t|
    t.string "neighborhood_name"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string  "restaurant_name"
    t.text    "address"
    t.integer "rating"
    t.integer "cuisine_id"
    t.integer "neighborhood_id"
    t.string  "date_visited"
    t.integer "status"
    t.text    "notes"
  end

  add_index "restaurants", ["cuisine_id"], name: "index_restaurants_on_cuisine_id"
  add_index "restaurants", ["neighborhood_id"], name: "index_restaurants_on_neighborhood_id"

end
