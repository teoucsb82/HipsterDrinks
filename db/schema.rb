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

ActiveRecord::Schema.define(version: 20140326051120) do

  create_table "comments", force: true do |t|
    t.text     "body",             null: false
    t.integer  "author_id",        null: false
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating"
  end

  create_table "drink_ingredients", force: true do |t|
    t.integer  "drink_id"
    t.integer  "ingredient_id"
    t.float    "measurement_amount"
    t.string   "measurement_unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drink_ingredients", ["drink_id"], name: "index_drink_ingredients_on_drink_id"
  add_index "drink_ingredients", ["ingredient_id"], name: "index_drink_ingredients_on_ingredient_id"

  create_table "drinks", force: true do |t|
    t.integer  "user_id",                                  null: false
    t.string   "name",                                     null: false
    t.text     "recipe"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "filepicker_url"
    t.float    "average",                    default: 0.0
    t.string   "slug"
    t.text     "logline",        limit: 255
    t.text     "hidden_fields",              default: ""
  end

  add_index "drinks", ["name"], name: "index_drinks_on_name"
  add_index "drinks", ["slug"], name: "index_drinks_on_slug"

  create_table "favorites", force: true do |t|
    t.integer  "favoritor_id"
    t.integer  "favorited_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["favorited_id"], name: "index_favorites_on_favorited_id"
  add_index "favorites", ["favoritor_id", "favorited_id"], name: "index_favorites_on_favoritor_id_and_favorited_id", unique: true
  add_index "favorites", ["favoritor_id"], name: "index_favorites_on_favoritor_id"

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "ingredients", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "users", force: true do |t|
    t.string   "email",                              null: false
    t.string   "password_digest",                    null: false
    t.string   "session_token",                      null: false
    t.string   "confirmation_token"
    t.string   "reset_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",              default: false
    t.string   "slug"
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true

end
