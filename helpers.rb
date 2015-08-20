

def archive
  a = 0
  o = 0
  sfdc_accounts = SfdcAccounts.all
  total_a = sfdc_accounts.count
  sfdc_optys = SfdcOpportunitys.all
  total_o = sfdc_optys.count
  
  sfdc_accounts.each do |sfdc_account|
    account = Accounts.new(sfdc_account.attributes)
    account.save
    #sfdc_account.destroy
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

def clean_sfdc()
  
end

def clean_archive()
  
end
