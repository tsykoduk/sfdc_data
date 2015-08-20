class Opportunity < ActiveRecord::Migration
  def up
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
    end

    add_index "opportunity", ["lastmodifieddate"], name: "opportunity_idx_lastmodifieddate", using: :btree
    add_index "opportunity", ["sfid"], name: "opportunity_idx_sfid", unique: true, using: :btree
    add_index "opportunity", ["systemmodstamp"], name: "opportunity_idx_systemmodstamp", using: :btree
  end

  def down
    drop_table :opportunity
  end
end