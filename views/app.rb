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
    @td_count = WwwAccess.all.count
    @sfdc_count = SfdcWwwAccess.all.count
    erb :index, :layout => :theme
  end
  
  get "/pull-from-td" do
    get_from_td()
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
  
  get "/clean-staging" do
    clean_td()
    redirect to('/')
  end    
  
  
  
end