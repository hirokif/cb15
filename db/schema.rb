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

ActiveRecord::Schema.define(version: 20151127170749) do

  create_table "cds", force: :cascade do |t|
    t.integer  "corp_no"
    t.integer  "roi_no"
    t.integer  "mr"
    t.integer  "pp"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "corps", id: false, force: :cascade do |t|
    t.string   "corp_no",    limit: 8, null: false
    t.string   "corp_name"
    t.string   "corp_pos"
    t.string   "corp_rep"
    t.string   "corp_add"
    t.string   "corp_tel"
    t.string   "corp_fax"
    t.string   "corp_mail"
    t.text     "note"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "corps", ["corp_no"], name: "index_corps_on_corp_no", unique: true

  create_table "rois", id: false, force: :cascade do |t|
    t.integer  "roi_no"
    t.string   "roi_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "toi_no"
  end

  create_table "tois", id: false, force: :cascade do |t|
    t.integer  "toi_no"
    t.string   "toi_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
