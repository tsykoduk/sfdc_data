require 'bundler'
Bundler.require

set :database, ENV['DATABASE_URL'] || "postgres://ub5r03tajmc10u:p7fern0a6cp2acddbk60piojl57@ec2-107-21-118-125.compute-1.amazonaws.com:5492/de4du2toaka3b1"

Dir["./models/*.rb"].each {|file| require file }

#require "./helpers.rb"

class App < Sinatra::Base
  
  get "/" do
    @archive_accounts_count = Accounts.all.count
    @sfdc_accounts_count = SfdcAccounts.all.count
    @archive_opty_count = Opportunitys.all.count
    @sfdc_opty_count = SfdcOpportunitys.all.count
    erb :index, :layout => :theme
  end
  
  get "/archive" do
    archive()
    redirect to('/')  
  end
  
  get "/put-into-sfdc" do
    put_into_sfdc()
    redirect to('/')
  end
  
  get "/clean-sfdc" do
    clean_sfdc()
    redirect to('/')
  end
  
  get "/clean-archive" do
    clean_td()
    redirect to('/')
  end    
  
  
  
end