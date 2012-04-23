source 'https://rubygems.org'




gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'time_diff'
gem 'activemerchant', :require => 'active_merchant'
gem 'activeadmin' , '0.4.3'
gem "formtastic", "~> 2.1.1"
gem 'validates_overlap'

group :production, :staging do
  gem 'pg', " ~> 0.12.0"  
end

group :development, :test do # Pretty printed test output
#   gem 'turn', '0.8.2', :require => false
    gem 'taps', :require => false # has an sqlite dependency, which heroku hates
    gem "nifty-generators"
    gem "sqlite3-ruby", :require => "sqlite3"
    gem 'sqlite3', '1.3.5'
end

# group :development, :test do
  # gem "sqlite3-ruby", :require => "sqlite3"
# end

gem "paperclip", "~> 3.0"
 
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "twitter-bootstrap-rails"
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem "mocha", :group => :test