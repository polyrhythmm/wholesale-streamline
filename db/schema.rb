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

ActiveRecord::Schema.define(version: 20171104025252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "options", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "option_id",  limit: 8
    t.string   "name"
    t.integer  "position"
    t.integer  "shop_id",    limit: 8
    t.integer  "product_id", limit: 8
  end

  create_table "owners", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "shop_id",             limit: 8
    t.string   "name"
    t.string   "email"
    t.string   "domain"
    t.string   "province"
    t.string   "country"
    t.string   "address1"
    t.string   "zip"
    t.string   "city"
    t.string   "source"
    t.string   "phone"
    t.string   "customer_email"
    t.integer  "primary_location_id"
    t.string   "primary_locale"
    t.string   "address2"
    t.string   "country_code"
    t.string   "country_name"
    t.string   "currency"
    t.string   "timezone"
    t.string   "shop_owner"
    t.string   "province_code"
    t.string   "myshopify_domain"
    t.boolean  "has_storefront"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title"
    t.text     "body_html"
    t.string   "vendor"
    t.string   "product_type"
    t.string   "handle"
    t.string   "published_scope"
    t.string   "tags"
    t.text     "variants"
    t.text     "options"
    t.integer  "owner_id",        limit: 8
    t.string   "image"
    t.integer  "product_id",      limit: 8
  end

  create_table "shops", force: :cascade do |t|
    t.string   "shopify_domain", null: false
    t.string   "shopify_token",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shops", ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true, using: :btree

  create_table "variants", force: :cascade do |t|
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "variant_id",             limit: 8
    t.string   "title"
    t.string   "price"
    t.string   "sku"
    t.integer  "position"
    t.string   "inventory_policy"
    t.string   "fulfillment_service"
    t.string   "inventory_management"
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.boolean  "taxable"
    t.string   "barcode"
    t.integer  "grams"
    t.string   "image_id"
    t.string   "inventory_quantity"
    t.float    "weight"
    t.string   "weight_unit"
    t.integer  "old_inventory_quantity"
    t.boolean  "requires_shipping"
    t.integer  "shop_id",                limit: 8
    t.integer  "product_id",             limit: 8
  end

end
