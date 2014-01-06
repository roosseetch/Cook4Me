# Cook4Me
is a service for quick and easy ordering food.


## Adding Authentication with Devise

http://guides.railsgirls.com/devise/

### Step 0: Add devise gem

Open up your Gemfile and add this line

```
gem 'devise'
```

and run

```
bundle install
```

to install the gem. Also remember to restart the Rails server.

### Step 1: Set up devise in your app

Run the following command in the terminal.

```
rails g devise:install
```

### Step 2: Configure Devise

Ensure you have defined default url options in your environments files. Open up config/environments/development.rb and add this line:

```
config.action_mailer.default_url_options = { :host => 'localhost:3000' }
```

before the end keyword.

Open up app/views/layouts/application.html.erb and add:

```
<% if notice %>
  <p class="alert alert-notice"><%= notice %></p>
<% end %>
<% if alert %>
  <p class="alert alert-error"><%= alert %></p>
<% end %>
```

right above

```
<%= yield %>
```

### Step 3: Setup the User model

We’ll use a bundled generator script to create the User model.

```
rails g devise user
bundle exec rake db:migrate
```

Coach: Explain what user model has been generated. What are the fields?

This will:

* drop any existing database
* create a new database
* migrate the database
* create a default user and admin


### To finish setting Foundation up we need to run a generator that the gem provides called foundation:install.

```
rails g foundation:install
```
