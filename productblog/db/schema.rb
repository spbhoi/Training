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

ActiveRecord::Schema.define(version: 20180319073224) do

  create_table "addresses", force: :cascade do |t|
    t.text "line_1"
    t.text "line_2"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "postal_code"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lineitems", force: :cascade do |t|
    t.string "sku"
    t.string "description"
    t.integer "quantity"
    t.decimal "price"
    t.integer "product_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_no"
    t.string "tracking_no"
    t.boolean "is_express_delivery"
    t.boolean "is_customer_pickup"
    t.date "dilivery_date"
    t.string "order_currency"
    t.string "special_instruction"
    t.integer "order_value"
    t.integer "user_id"
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "sku"
    t.string "name"
    t.integer "quantity"
    t.decimal "length"
    t.decimal "width"
    t.decimal "height"
    t.decimal "weight"
    t.decimal "price"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.date "dob"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end