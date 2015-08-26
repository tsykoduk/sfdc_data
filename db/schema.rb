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

ActiveRecord::Schema.define(version: 20150824142216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_stat_statements"
  enable_extension "hstore"

  create_table "account", force: :cascade do |t|
    t.datetime "lastmodifieddate"
    t.string   "shippingpostalcode", limit: 20
    t.string   "name",               limit: 255
    t.string   "industry",           limit: 40
    t.float    "billinglongitude"
    t.string   "billingcountry",     limit: 80
    t.string   "fax",                limit: 40
    t.string   "shippingstreet",     limit: 255
    t.string   "shippingcity",       limit: 40
    t.string   "shippingcountry",    limit: 80
    t.float    "shippinglongitude"
    t.float    "billinglatitude"
    t.string   "phone",              limit: 40
    t.string   "sicdesc",            limit: 80
    t.string   "type",               limit: 40
    t.string   "ownerid",            limit: 18
    t.float    "annualrevenue"
    t.text     "description"
    t.float    "shippinglatitude"
    t.string   "parentid",           limit: 18
    t.datetime "systemmodstamp"
    t.datetime "createddate"
    t.string   "billingpostalcode",  limit: 20
    t.string   "billingstreet",      limit: 255
    t.string   "website",            limit: 255
    t.boolean  "isdeleted"
    t.string   "accountsource",      limit: 40
    t.integer  "numberofemployees"
    t.string   "jigsaw",             limit: 20
    t.string   "sfid",               limit: 18
    t.string   "billingcity",        limit: 40
    t.string   "shippingstate",      limit: 80
    t.string   "billingstate",       limit: 80
    t.string   "_hc_err"
    t.string   "_hc_lastop"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "account", ["lastmodifieddate"], name: "account_idx_lastmodifieddate", using: :btree
  add_index "account", ["sfid"], name: "account_idx_sfid", unique: true, using: :btree
  add_index "account", ["systemmodstamp"], name: "account_idx_systemmodstamp", using: :btree

  create_table "opportunity", force: :cascade do |t|
    t.boolean  "isclosed"
    t.string   "forecastcategoryname",   limit: 40
    t.string   "name",                   limit: 120
    t.datetime "systemmodstamp"
    t.string   "lastmodifiedbyid",       limit: 18
    t.integer  "fiscalyear"
    t.boolean  "hasopportunitylineitem"
    t.string   "ownerid",                limit: 18
    t.string   "forecastcategory",       limit: 40
    t.float    "amount"
    t.float    "probability"
    t.string   "sfid",                   limit: 18
    t.string   "campaignid",             limit: 18
    t.datetime "lastmodifieddate"
    t.date     "closedate"
    t.string   "fiscal",                 limit: 6
    t.boolean  "isdeleted"
    t.boolean  "iswon"
    t.string   "pricebook2id",           limit: 18
    t.datetime "lastreferenceddate"
    t.datetime "lastvieweddate"
    t.datetime "createddate"
    t.string   "createdbyid",            limit: 18
    t.string   "type",                   limit: 40
    t.string   "stagename",              limit: 40
    t.date     "lastactivitydate"
    t.string   "accountid",              limit: 18
    t.string   "leadsource",             limit: 40
    t.string   "nextstep",               limit: 255
    t.integer  "fiscalquarter"
    t.text     "description"
    t.string   "_hc_err"
    t.string   "_hc_lastop"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "opportunity", ["lastmodifieddate"], name: "opportunity_idx_lastmodifieddate", using: :btree
  add_index "opportunity", ["sfid"], name: "opportunity_idx_sfid", unique: true, using: :btree
  add_index "opportunity", ["systemmodstamp"], name: "opportunity_idx_systemmodstamp", using: :btree

  create_table "stagingaccount", force: :cascade do |t|
    t.string   "shippingpostalcode", limit: 20
    t.string   "name",               limit: 255
    t.string   "industry",           limit: 40
    t.float    "billinglongitude"
    t.string   "billingcountry",     limit: 80
    t.string   "fax",                limit: 40
    t.string   "shippingstreet",     limit: 255
    t.string   "shippingcity",       limit: 40
    t.string   "shippingcountry",    limit: 80
    t.float    "shippinglongitude"
    t.float    "billinglatitude"
    t.string   "phone",              limit: 40
    t.string   "sicdesc",            limit: 80
    t.string   "type",               limit: 40
    t.string   "ownerid",            limit: 18
    t.float    "annualrevenue"
    t.text     "description"
    t.float    "shippinglatitude"
    t.string   "parentid",           limit: 18
    t.datetime "systemmodstamp"
    t.datetime "createddate"
    t.string   "billingpostalcode",  limit: 20
    t.string   "billingstreet",      limit: 255
    t.string   "website",            limit: 255
    t.boolean  "isdeleted"
    t.string   "accountsource",      limit: 40
    t.integer  "numberofemployees"
    t.string   "jigsaw",             limit: 20
    t.string   "sfid",               limit: 18
    t.string   "billingcity",        limit: 40
    t.string   "shippingstate",      limit: 80
    t.string   "billingstate",       limit: 80
    t.string   "_hc_err"
    t.string   "_hc_lastop"
  end

end
