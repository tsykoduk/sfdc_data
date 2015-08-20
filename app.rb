require 'bundler'
require 'action_view'
require 'active_record'
require 'uri'
require 'td'
require 'td-client'
require 'tilt/erubis'

Bundler.require

require "./helpers.rb"

class App < Sinatra::Base
  
  get "/" do
    @archive_accounts_count = Account.all.count
    @sfdc_accounts_count = SfdcAccount.all.count
    @archive_opty_count = Opportunity.all.count
    @sfdc_opty_count = SfdcOpportunity.all.count
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