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

ActiveRecord::Schema.define(version: 20180509021032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.integer "review_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "description"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "upvotes"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "logo"
    t.string "primary_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "speed_of_service"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "value"
    t.text "text"
    t.integer "user_id"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_meals", force: :cascade do |t|
    t.integer "ranking"
    t.text "text"
    t.integer "meal_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
