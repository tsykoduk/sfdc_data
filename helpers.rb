set :database, ENV['DATABASE_URL'] || "postgres://ub5r03tajmc10u:p7fern0a6cp2acddbk60piojl57@ec2-107-21-118-125.compute-1.amazonaws.com:5492/de4du2toaka3b1"

Dir["./models/*.rb"].each {|file| require file }


def archive()
  a = 0
  o = 0
  sfdc_accounts = SfdcAccount.all
  total_a = sfdc_accponts.count
  sfdc_optys = SfdcOpportunity.all
  total_o = sfdc_optys.count
  sfdc_accounts.each do {|sfdc_account|
    account = Account.new(sfdc_account.attributes.slice(Account.attribute_names))
    account.save!
  #  sfdc_account.destroy
    puts "moved account #" + a.to_s + " of " + total_a.to_s
    a +=
  }
  sfdc_optys.each do {|sfdc_opty|
    opty = Opportunity.new(sfdc_opty.attributes.slice(Opportunity.attribute_names))
    opty.save!
   # sfdc_opty.destroy
    puts "moved opts #" + o.to_s + " of " + total_o.to_s
    o +=
  }
end

def put_into_sfdc()
  
end

def clean_sfdc()
  
end

def clean_archive()
  
end
