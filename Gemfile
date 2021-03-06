# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# image validate
gem 'active_storage_validations', '0.8.9'
gem 'mini_magick', '4.9.5'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'faker'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# resize image
gem 'image_processing', '1.9.3'

gem 'bootstrap-sass', '3.4.1'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# crypt password
gem 'bcrypt', '3.1.13'

# rubocop
gem 'rubocop'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# pagination
gem 'bootstrap-will_paginate', '1.0.0'
gem 'will_paginate', '3.3.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Use sqlite3 as the database for Active Record
  gem 'action-cable-testing'
  gem 'sqlite3', '~> 1.4'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'guard', '2.16.2'
  gem 'guard-minitest', '2.4.6'
  gem 'minitest', '5.11.3'
  gem 'minitest-reporters', '1.3.8'
  gem 'rails-controller-testing', '1.0.4'
  gem 'webdrivers'

  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers'
end

group :production do
  gem 'pg', '1.2.3'
end

group :development, :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~>  4.0.1'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'devise'

gem 'omniauth'

gem 'omniauth-google-oauth2'

gem 'omniauth-facebook'

# dev varible, debug
gem 'byebug'
gem 'figaro'

# csvtozip task
gem 'rubyzip', require: 'zip'

gem 'redis'

gem 'cancancan', '~> 3.1.0'
gem 'devise_lastseenable'
gem 'rolify'

gem 'devise-i18n'

gem 'carrierwave'
