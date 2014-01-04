# Cook4Me is a service for quick and easy ordering food.


## Installation

Install bundler if you haven't yet:

```
gem install bundler
```

Install the gems:

```
bundle install
```

This will install needed gems and Devise.

Rake devise setup task:

```
rake devise:setup
```

This will:

* drop any existing database
* create a new database
* migrate the database
* create a default user and admin

Run the server and use the credentials provided by the rake task to sign in and test the application.
