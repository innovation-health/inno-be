source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

#use postgres always everywhere
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# gem 'active_model_serializers'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#user auth via devise
gem 'devise'

#figaro for keys
gem 'figaro'

#httparty for internet things
gem 'httparty'

#paperclip for file uploads
gem 'paperclip'

#aws for paperclip
gem 'aws-sdk', '< 2.0'

#cors for bob
gem 'rack-cors'

#lets do docs differnetly
gem 'documentation', '~> 1.0.0'

#seed file
gem 'seed_dump'


#faker for data
gem 'faker'

gem 'pry-rails'


# Twillio number - (415) 658-9140
# request url:     http://twimlets.com/echo?Twiml=%3CResponse%3E%3CSms%3EHello+Brian%2C+thanks+for+the+message%21%3C%2FSms%3E%3C%2FResponse%3E
gem 'twilio-ruby', '~> 3.12'

# for alert queue
gem 'sucker_punch'

group :development, :test do
  #proxylocal for bob
  gem 'proxylocal'

  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'pry-toys'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'

  gem 'better_errors'
  gem 'binding_of_caller'


  #watch sql queries
  gem 'bullet'

  #add comments to routs
  gem 'annotate'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
  gem 'puma'
end

