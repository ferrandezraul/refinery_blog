source 'https://rubygems.org'

ruby "2.1.5"

gem 'rails', '3.2.16'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#group :development, :test do
#  gem 'sqlite3'
#end

group :production do
  # Refinery doc
  # If you want to use Refinery’s image and resource support, you need to add the ‘fog’ gem too.
  gem 'fog'

  # Heroku dependency needed in rails4 (added although we use rails 3.2 and should be included)
  gem 'rails_12factor'
end

# Heroku depends on the presence of the pg (PostgreSQL) gem
# therefore I changed from sqlite3 to PostgreSQL on production, development and test
gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# Refinery CMS
gem 'refinerycms', '~> 2.1.5'

# Optionally, specify additional Refinery CMS Extensions here:
gem 'refinerycms-acts-as-indexed', '~> 1.0.0'
#  gem 'refinerycms-blog', '~> 2.1.0'
#  gem 'refinerycms-inquiries', '~> 2.1.0'
#  gem 'refinerycms-search', '~> 2.1.0'
#  gem 'refinerycms-page-images', '~> 2.1.0'


# Dependency from Heroku
gem 'unicorn'

# Amazon web services
gem 'aws-sdk'
gem 'paperclip'

gem 'cucumber'
gem 'rspec'

# http://railscasts.com/episodes/402-better-errors-railspanel
# https://github.com/charliesome/better_errors
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'   # From https://github.com/dejan/rails_panel
end

gem 'globalize-versioning'
gem 'foundation-rails' # Added for better front end