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

ActiveRecord::Schema.define(version: 20160515171140) do

  create_table "comments", force: :cascade do |t|
    t.integer  "recipe_id",  null: false
    t.integer  "user_id",    null: false
    t.string   "body",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "images", ["imageable_id"], name: "index_images_on_imageable_id"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name",            null: false
    t.integer  "nutrition"
    t.integer  "ecofriendliness"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "lifestyle_posts", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.string   "lifestyle_tag"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "meals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "pictures", force: :cascade do |t|
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer  "ingredient_id",         null: false
    t.integer  "recipe_id",             null: false
    t.integer  "total_nutrition"
    t.integer  "total_ecofriendliness"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "quantity_by_weight"
  end

  create_table "recipe_meals", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "meal_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.string   "title",       null: false
    t.string   "description", null: false
    t.string   "image"
    t.string   "directions"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "meal_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
