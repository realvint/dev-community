source 'https://rubygems.org'

ruby '3.2.2'

gem 'rails', '~> 7.1.1'

gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'

gem 'cssbundling-rails'
gem 'jsbundling-rails'
gem 'propshaft'

gem 'dotenv-rails', '2.8.1', require: 'dotenv/rails-now'
gem 'redis', '>= 4.0.1'
gem 'stimulus-rails'
gem 'turbo-rails'

group :development, :test do
  gem 'debug', platforms: %i[mri windows]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 3.2', '>= 3.2.1'
end

group :development do
  gem 'rubocop', '~> 1.57'
  gem 'rubocop-factory_bot', '~> 2.24'
  gem 'rubocop-rails', '~> 2.21'
  gem 'rubocop-rspec', '~> 2.24'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '~> 2.0', '>= 2.0.2'
  gem 'rspec-rails', '~> 6.0', '>= 6.0.3'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'webdrivers'
end
