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

ActiveRecord::Schema.define(version: 20161106200045) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.integer  "contragent_id"
    t.string   "number"
    t.string   "bik"
    t.string   "bank_name"
    t.integer  "currency_code"
    t.boolean  "primary"
    t.string   "korr_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["contragent_id"], name: "index_bank_accounts_on_contragent_id"
  end

  create_table "contragents", force: :cascade do |t|
    t.string   "guid"
    t.string   "name"
    t.string   "full_name"
    t.string   "inn"
    t.string   "kpp"
    t.string   "legal_address"
    t.string   "actual_address"
    t.string   "post_address"
    t.string   "phone"
    t.string   "email"
    t.string   "idais"
    t.integer  "change_ver"
    t.boolean  "delete_flag"
    t.boolean  "was_changed"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end