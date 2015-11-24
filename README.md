# README #

### Introduction ###

People manager app leverage the power of redis and resque to send emails when person records get created or deleted

### Dependencies ###

* Ruby 2.2.x
* Rails 4.2.x
* Redis
* MySql

### How to install ###

After installing all the dependencies:

* Run `bundle install` to install required gems
* Create the database in MySql database, the name of the database should reflect the one on the database.yml. The default value is people_manager_development
* Configure the database.yml: Create an environment variable that reflects your MySql password with `export DATABASE_PASSWORD=password`
* Run the database migrate rake task: `rake db:migrate`
* Run the database seed rake task: `rake db:seed`
* Start the rails server: `rails server`
* Start Redis server: `redis-server /usr/local/etc/redis.conf`
* Start Resque: `rake resque:work QUEUE='*'`

### Run Tests ###

Run the command `rake test`


### Contact ###

rodrigozurek@gmail.com

