# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_24_111732) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "members", force: :cascade do |t|
    t.integer "team_id"
    t.integer "student_number"
    t.string "name"
    t.boolean "shrimp"
    t.boolean "crab"
    t.boolean "walnuts"
    t.boolean "wheat"
    t.boolean "buckwheat"
    t.boolean "egg"
    t.boolean "milk"
    t.boolean "peanuts"
    t.boolean "almonds"
    t.boolean "abalone"
    t.boolean "squid"
    t.boolean "salmon_roe"
    t.boolean "orange"
    t.boolean "cashews"
    t.boolean "kiwi_fruit"
    t.boolean "beef"
    t.boolean "sesame"
    t.boolean "salmon"
    t.boolean "mackerel"
    t.boolean "soybeans"
    t.boolean "chicken"
    t.boolean "banana"
    t.boolean "pork"
    t.boolean "matsutake_mushrooms"
    t.boolean "peaches"
    t.boolean "yams"
    t.boolean "apples"
    t.boolean "gelatin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer "team_id"
    t.string "name"
    t.boolean "shrimp"
    t.boolean "crab"
    t.boolean "walnuts"
    t.boolean "wheat"
    t.boolean "buckwheat"
    t.boolean "egg"
    t.boolean "milk"
    t.boolean "peanuts"
    t.boolean "almonds"
    t.boolean "abalone"
    t.boolean "squid"
    t.boolean "salmon_roe"
    t.boolean "orange"
    t.boolean "cashews"
    t.boolean "kiwi_fruit"
    t.boolean "beef"
    t.boolean "sesame"
    t.boolean "salmon"
    t.boolean "mackerel"
    t.boolean "soybeans"
    t.boolean "chicken"
    t.boolean "banana"
    t.boolean "pork"
    t.boolean "matsutake_mushrooms"
    t.boolean "peaches"
    t.boolean "yams"
    t.boolean "apples"
    t.boolean "gelatin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "division"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
