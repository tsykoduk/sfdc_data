class Stagingaccount < ActiveRecord::Migration
  def up
    create_table "stagingaccount", force: :cascade do |t|
      t.string   "shippingpostalcode", limit: 20
      t.string   "name",               limit: 255
      t.string   "industry",           limit: 40
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
      t.float    "annualrevenue"
      t.text     "description"
      t.float    "shippinglatitude"
      t.string   "billingpostalcode",  limit: 20
      t.string   "billingstreet",      limit: 255
      t.string   "website",            limit: 255
      t.integer  "numberofemployees"
      t.string   "billingcity",        limit: 40
      t.string   "shippingstate",      limit: 80
      t.string   "billingstate",       limit: 80
      t.string   "_hc_err"  
      t.string   "_hc_lastop"
    end
  end
  
  def down
    drop_table :stagingaccount
  end
end
