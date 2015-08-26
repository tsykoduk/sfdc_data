# Force Archiver

Grab data from Force, move it to a archive table in Postgres

**To install **

* ``git pull``
* ``heroku create``
* ``heroku addons:create heroku-postgres``
* ``heroku addons:create herokuconnect``
* ``heroku run bundle exec rake --trace db:migrate`` or run the migrations by hand

Or click this button:

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

**To set up:**

* You might upgrade to a production version of Heroku Connect (```heroku addons:upgrade herokuconnect:<yourplan>```)
* You will need a SFDC Org
* Hook Heroku Connect up to sync the Accounts object

**Notes**

* This is a demo only.
* This does not use best practices. To do this in production you will need to move the processing into background jobs
* If you need to work with more then about 1000 records at a time, I suggest using ```irb``` right now. You can call the functions from there, and not worry about time outs.