source 'https://rubygems.org'

gem 'faker'
gem 'bootstrap-sass'
gem 'puma'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'devise'
gem 'activeadmin'
# beautify console outputs
gem 'awesome_print'
gem 'pry', '~> 0.10.3'
# a wrapper for themovidedb api
gem 'themoviedb-api', '~> 1.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # rspec for testing
  gem 'rspec-rails'
  # for testing assocations easily inside rspec
  gem 'shoulda'
  # for testing submitting info through a form
  gem 'capybara', :git => 'git://github.com/jnicklas/capybara.git'
  # for debuagging failed rspec tests
  gem 'launchy'
  gem 'selenium-webdriver', '~> 2.53', '>= 2.53.4'
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'rails-controller-testing'
  gem 'shoulda-matchers'
end

group :production do
	gem 'pg', '~> 0.20'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
