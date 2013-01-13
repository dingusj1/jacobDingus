source 'http://rubygems.org'

gem 'rails'
gem 'ffi'
gem 'newrelic_rpm'

group :production do
  gem 'pg'
  gem 'thin', '~> 1.2.11'
end

group :test, :development do
  gem 'sqlite3'
  gem 'capybara'
  gem 'turn', '~> 0.8.3', :require => false
end

group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

