set :database, ENV['DATABASE_URL'] || "postgres://udrdrt4fu4gft3:pamm5rl6d2v0de1rjgu3of1r7uk@ec2-54-204-7-233.compute-1.amazonaws.com:5632/dbqp1da4hkcg7o"

Dir["./models/*.rb"].each {|file| require file }


def move_from_sfdc(object)
  # need to grab an account and all of the optys that are associated with it
  # and then move them over to the 
  
  
  
end