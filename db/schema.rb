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

ActiveRecord::Schema.define(version: 20171001022340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: true do |t|
    t.string   "name"
    t.string   "untappd_id"
    t.text     "description"
    t.integer  "brewery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "campaign_id"
    t.string   "category",    null: false
  end

  create_table "breweries", force: true do |t|
    t.string   "name"
    t.string   "short_description"
    t.string   "untappd_id"
    t.float    "rating"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "type"
    t.string   "short_description"
    t.text     "long_description"
    t.datetime "deadline"
    t.integer  "goal_cents",        default: 0,     null: false
    t.string   "goal_currency",     default: "USD", null: false
    t.integer  "brewery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cheer_orders", force: true do |t|
    t.integer  "user_id",     null: false
    t.integer  "cheer_id",    null: false
    t.integer  "campaign_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cheers", force: true do |t|
    t.integer  "campaign_id",                    null: false
    t.string   "description",                    null: false
    t.integer  "value_cents",    default: 0,     null: false
    t.string   "value_currency", default: "USD", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "feedbacks", force: true do |t|
    t.integer "beer_id"
    t.text    "q1"
    t.text    "q2"
    t.text    "q3"
    t.text    "q4"
    t.text    "q5"
    t.text    "q6"
    t.text    "q7"
    t.text    "q8"
    t.text    "q9"
    t.text    "final"
  end

  create_table "orders", id: false, force: true do |t|
    t.string   "token"
    t.string   "transaction_id"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "status"
    t.string   "number"
    t.string   "uuid"
    t.string   "user_id"
    t.decimal  "price"
    t.decimal  "shipping"
    t.string   "tracking_number"
    t.string   "phone"
    t.string   "name"
    t.date     "expiration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "payment_option_id"
  end

  create_table "payment_options", force: true do |t|
    t.decimal  "amount"
    t.string   "amount_display"
    t.text     "description"
    t.string   "shipping_desc"
    t.string   "delivery_desc"
    t.integer  "limit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
