source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.0'
gem 'json', '~> 1.7.7'
gem 'pg'
gem 'puma'
gem 'money-rails'
gem 'haml-rails'
gem 'untappd'

group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'forgery'
  gem 'dotenv-rails', require: 'dotenv/rails-now'
  gem 'rspec-rails', '~> 2.0'
  gem 'shoulda'
  gem 'pry-rails'
end

# jQuery
gem 'jquery-rails'
gem 'jquery-ui-rails'

# Kickstarter's awesome Amazon Flexible Payments gem
#gem 'amazon_flex_pay'

# Configuration File
gem 'rails_config'

# For Heroku
gem 'rails_12factor'
