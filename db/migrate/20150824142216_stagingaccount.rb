class Stagingaccount < ActiveRecord::Migration
  def up
    create_table "stagingaccount", force: :cascade do |t|
      t.datetime "lastmodifieddate"
      t.string   "shippingpostalcode", limit: 20
      t.string   "lastmodifiedbyid",   limit: 18
      t.string   "name",               limit: 255
      t.string   "industry",           limit: 40
      t.datetime "lastreferenceddate"
      t.float    "billinglongitude"
      t.string   "photourl",           limit: 255
      t.string   "billingcountry",     limit: 80
      t.string   "fax",                limit: 40
      t.string   "shippingstreet",     limit: 255
      t.string   "shippingcity",       limit: 40
      t.string   "shippingcountry",    limit: 80
      t.date     "lastactivitydate"
      t.datetime "lastvieweddate"
      t.float    "shippinglongitude"
      t.float    "billinglatitude"
      t.string   "phone",              limit: 40
      t.string   "sicdesc",            limit: 80
      t.string   "type",               limit: 40
      t.string   "ownerid",            limit: 18
      t.float    "annualrevenue"
      t.text     "description"
      t.string   "masterrecordid",     limit: 18
      t.float    "shippinglatitude"
      t.string   "parentid",           limit: 18
      t.datetime "systemmodstamp"
      t.datetime "createddate"
      t.string   "billingpostalcode",  limit: 20
      t.string   "jigsawcompanyid",    limit: 20
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
      t.string   "createdbyid",        limit: 18
      t.string   "_hc_err"  
      t.string   "_hc_lastop"
    end
    add_index "stagingaccount", ["lastmodifieddate"], name: "stagingaccount_idx_lastmodifieddate", using: :btree
    add_index "stagingaccount", ["sfid"], name: "stagingaccount_idx_sfid", unique: true, using: :btree
    add_index "stagingaccount", ["systemmodstamp"], name: "stagingaccount_idx_systemmodstamp", using: :btree
  end

  def down
    drop_table :stagingaccount
  end
end
