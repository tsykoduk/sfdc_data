set :database, ENV['DATABASE_URL'] || "postgres://udrdrt4fu4gft3:pamm5rl6d2v0de1rjgu3of1r7uk@ec2-54-204-7-233.compute-1.amazonaws.com:5632/dbqp1da4hkcg7o"

Dir["./models/*.rb"].each {|file| require file }


def archive()
  a = 0
  o = 0
  sfdc_accounts = SfdcAccount.all
  total_a = sfdc_accponts.count
  sfdc_optys = SfdcOpportunity.all
  total_o = sfdc_optys.count
  sfdc_accounts.each do |sfdc_account|
    account = Account.new(sfdc_account.attributes.slice(Account.attribute_names))
    account.save!
    puts "moved account #" + a.to_s + " of " + total_a.to_s
    a +=
  end
  sfdc_optys.each do |sfdc_opty|
    opty = Opportunity.new(sfdc_opty.attributes.slice(Opportunity.attribute_names))
    puts "moved opts #" + o.to_s + " of " + total_o.to_s
  end
end

  


end

def put_into_sfdc()
  
end

def clean_sfdc()
  
end

def clean_archive()
  
end
