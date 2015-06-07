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
    t.text   "description"
    t.string "name"
  end

  create_table "genres", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "cuisine_id"
  end

  add_index "genres", ["cuisine_id"], name: "index_genres_on_cuisine_id"
  add_index "genres", ["restaurant_id"], name: "index_genres_on_restaurant_id"

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string  "name"
    t.text    "address"
    t.integer "neighborhood_id"
  end

  add_index "restaurants", ["neighborhood_id"], name: "index_restaurants_on_neighborhood_id"

  create_table "reviews", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "user_id"
    t.text    "submitted_review"
    t.integer "rating"
  end

  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "password_digest"
  end

  create_table "visits", force: :cascade do |t|
    t.integer "user_id"
    t.integer "restaurant_id"
  end

  add_index "visits", ["restaurant_id"], name: "index_visits_on_restaurant_id"
  add_index "visits", ["user_id"], name: "index_visits_on_user_id"

end
