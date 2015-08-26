
def archive()
  a = 0
  SfdcAccounts.find_each do |sfdc_account|
    account = Accounts.new(sfdc_account.attributes)
    account.save
    sfdc_account.destroy
    puts "archived account #" + a.to_s
    a = a + 1
  end
end

def clean_archive()
  a = 0 
  Accounts.find_each do |archive_account|
    archive_account.destroy
    puts "destroyed archive #" + a.to_s
    a = a + 1
  end
end

def clean_stage()
  a = 0 
  StagingAccount.find_each do |stage_account|
    stage_account.destroy
    puts "destroyed staged account #" + a.to_s
    a = a + 1
  end
end


def generate_test_data(rows=1000)
  
  #this will generate 1000 accounts, and put them into a staging table in Postgres
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
end

def move_test_into_sfdc()
  a = 0
  StagingAccount.find_each do |stage|
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
