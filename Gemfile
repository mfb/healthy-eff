source 'https://rubygems.org'

gem 'rails', '3.2.16'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'devise'
gem 'devise_invitable', '~> 1.3.4'
gem "figaro"
# gem "binding_of_caller"

gem 'haml'
# gem 'selenium-webdriver'

group :production do
  gem 'rails_12factor'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'sqlite3'
  gem 'database_cleaner'
  gem 'cucumber-rails', :require => false
  gem 'rspec-rails', '~> 3.0'
  gem 'simplecov', :require => false
  gem 'erb2haml'
  gem 'rake', '10.4.2'
  gem 'poltergeist'
  gem 'launchy'
  gem 'factory_girl'
  gem 'test-unit'
  gem 'timecop'
  # gem "better_errors"
end

gem 'jquery-rails'
gem 'simple_captcha', :git => 'git://github.com/galetahub/simple-captcha.git'
gem 'twitter-bootstrap-rails'
gem 'fullcalendar-rails'
gem 'bootstrap-datepicker-rails', '~> 1.4.0'
gem 'bootstrap-glyphicons'
gem "codeclimate-test-reporter", group: :test, require: nil

# To generate PDF files
gem 'wkhtmltopdf-binary'
gem 'pdfkit'

group :test, :cucumber do
  gem 'pdf-reader'
end

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
