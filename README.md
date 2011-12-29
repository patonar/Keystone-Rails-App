The keystone web app for the web applications we are developing for vulnerability scanning, security and penentration testing.
It is very minimal, just a starting framework with nice layout.

# Installation

1. git clone the app
2. Change the config/database.yml.example file to show your database settings (I am using mysql)
3. Rename config/database.yml.example to database.yml
4. Edit db/seeds.rb file to create a user in the database (remember username and password)
5. Type rake db:create for creating a database
6. Type rake db:schema:load for creating the schema of the database (necessary tables etc.)
7. Type rake db:seed
8. type bundle in the commnand line from the rails app folder
9. Type rails s to start rails app -or- Type gem install passenger and then type passenger start (I really like standalone passenger)
10. Go to localhost:3000, login and watch your app. Have fun!!!

Have fun with this very simple app!

# Modules

## Arachni

The only available module at the moment is for [Arachni](https://github.com/Zapotek/arachni/) and is far from ready.

Installation is simple enough, open up the **Gemfile** and add the engine Gem:

```
gem 'keystone-arachni-engine', :git => 'git://github.com/Zapotek/keystone-arachni-engine.git'
```

# System requirements

Rails 3.1.3
Ruby 1.9.3

# Note

For tests, type guard. If you are on a mac you will need to install libevent gem.
