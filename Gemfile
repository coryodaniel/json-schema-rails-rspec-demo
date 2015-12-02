source 'https://rubygems.org'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'

gem 'active_model_serializers'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry'
  gem 'prmd', require: false
end

group :test do
  gem 'rspec-rails'
  gem 'committee'
  #gem 'json_matchers', github: 'thoughtbot/json_matchers', branch: 'lw-use-other-json-schema-validator'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
