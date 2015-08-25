

def archive()
  a = 0
  sfdc_accounts = SfdcAccounts.all
  total_a = sfdc_accounts.count

#  Currently, the only scope is accounts. This is for future stuff
#  o = 0
#  sfdc_optys = SfdcOpportunitys.all
#  total_o = sfdc_optys.count
  
  sfdc_accounts.each do |sfdc_account|
    account = Accounts.new(sfdc_account.attributes)
    account.save
    sfdc_account.destroy
    puts "moved account #" + a.to_s + " of " + total_a.to_s
    a = a + 1
  end
  
 # sfdc_optys.each do |sfdc_opty|
 #   opty = Opportunitys.new(sfdc_opty.attributes)
 #   opty.save
 #   #sfdc_opty.destroy
 #   puts "moved opts #" + o.to_s + " of " + total_o.to_s
 #   o = o + 1
 # end
  
end



def put_into_sfdc()
  a = 0
  o = 0
  accounts = Accounts.all
  total_a = accounts
  optys = Opportunitys.all
  total_o = optys
  
  accounts.each do |account|
    sfdc_account = SfdcAccounts.new(account.attributes)
    sfdc_account.save
    puts "moved account #" + a.to_s + " of " + total_a.to_s
    a = a + 1
  end
end


def clean_archive()
  
  accounts = Accounts.all
  accounts.each do |a|
    a.destroy
  end
  
end

def generate_test_data(rows=10000)
  
  #this will generate 10000 accounts, and put them into a staging table in Postgres
  #it will then copy them from the staging table into connect, for upload into SFDC
  #it will then clean out the staging table
  
  #if you need more or less, call it by hand and pass it the number that you need
  a = 0
  
  rows.times do
    foo = StagingAccount.new
    foo.name = Faker::Company.name
    foo.billingstreet = Faker::Address.street_address
    foo.billingcity = Faker::Address.city
    foo.billingstate = Faker::Address.state
    foo.billingpostalcode = Faker::Address.postcode
    foo.shippingstreet = Faker::Address.street_address
    foo.shippingcity = Faker::Address.city
    foo.shippingstate = Faker::Address.state
    foo.shippingpostalcode = Faker::Address.postcode
    foo.description = Faker::Company.catch_phrase
    foo.website = Faker::Internet.url('example.com')
    foo.annualrevenue = Random.new.rand(10000..10000000)
    foo.fax = Faker::PhoneNumber.phone_number
    foo.phone= Faker::PhoneNumber.phone_number
    foo.numberofemployees = Random.new.rand(1000)
    foo.save
    puts "created account #" + a.to_s
    a = a + 1
  end
  
  stages = StagingAccount.all
  stages.each do |stage|
    temp = stage.id
    stage.id = nil
    sfdc_account = SfdcAccounts.new(stage.attributes)
    sfdc_account.save
    stage.id = temp
    stage.destroy
    puts "moved account #" + a.to_s
    a = a - 1
  end
  
  
end
