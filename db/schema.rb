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

ActiveRecord::Schema.define(version: 20140820042311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "citation_profits", force: true do |t|
    t.integer  "citation_id"
    t.integer  "profit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "citation_profits", ["citation_id"], name: "index_citation_profits_on_citation_id", using: :btree
  add_index "citation_profits", ["profit_id"], name: "index_citation_profits_on_profit_id", using: :btree

  create_table "citation_worths", force: true do |t|
    t.integer  "citation_id"
    t.integer  "worth_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "citation_worths", ["worth_id"], name: "index_citation_worths_on_worth_id", using: :btree

  create_table "citations", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "longname"
    t.string   "shortname"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["country_id"], name: "index_companies_on_country_id", using: :btree
  add_index "companies", ["shortname"], name: "index_companies_on_shortname", using: :btree

  create_table "company_people", force: true do |t|
    t.integer  "company_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_people", ["company_id"], name: "index_company_people_on_company_id", using: :btree
  add_index "company_people", ["person_id"], name: "index_company_people_on_person_id", using: :btree

  create_table "company_positions", force: true do |t|
    t.integer  "company_id"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_positions", ["company_id"], name: "index_company_positions_on_company_id", using: :btree
  add_index "company_positions", ["position_id"], name: "index_company_positions_on_position_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "longname"
    t.string   "shortname"
    t.string   "continent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "countries", ["shortname"], name: "index_countries_on_shortname", using: :btree

  create_table "country_wars", force: true do |t|
    t.integer  "war_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "country_wars", ["country_id"], name: "index_country_wars_on_country_id", using: :btree
  add_index "country_wars", ["war_id"], name: "index_country_wars_on_war_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "title"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "suffix"
    t.string   "commonname"
    t.string   "gender"
    t.string   "ethnicity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  add_index "people", ["commonname"], name: "index_people_on_commonname", using: :btree
  add_index "people", ["country_id"], name: "index_people_on_country_id", using: :btree
  add_index "people", ["lastname"], name: "index_people_on_lastname", using: :btree

  create_table "person_positions", force: true do |t|
    t.integer  "person_id"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_positions", ["person_id"], name: "index_person_positions_on_person_id", using: :btree
  add_index "person_positions", ["position_id"], name: "index_person_positions_on_position_id", using: :btree

  create_table "positions", force: true do |t|
    t.string   "longname"
    t.string   "shortname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "positions", ["shortname"], name: "index_positions_on_shortname", using: :btree

  create_table "profits", force: true do |t|
    t.integer  "gain"
    t.date     "begin_at"
    t.date     "end_at"
    t.integer  "profitable_id"
    t.integer  "war_id"
    t.string   "profitable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profits", ["profitable_id"], name: "index_profits_on_profitable_id", using: :btree
  add_index "profits", ["war_id"], name: "index_profits_on_war_id", using: :btree

  create_table "wars", force: true do |t|
    t.string   "name"
    t.date     "begin_at"
    t.date     "end_at"
    t.integer  "total_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wars", ["name"], name: "index_wars_on_name", using: :btree

  create_table "worths", force: true do |t|
    t.integer  "value"
    t.date     "date"
    t.integer  "worthable_id"
    t.string   "worthable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "worths", ["worthable_id"], name: "index_worths_on_worthable_id", using: :btree
  add_index "worths", ["worthable_type"], name: "index_worths_on_worthable_type", using: :btree

end
