source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record

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
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap', '~> 4.0.0.alpha4'
gem 'twitter-bootstrap-rails', '~> 3.2', '>= 3.2.2'

# Docs
# https://rubygems.org/gems/google_maps_service
# http://www.rubydoc.info/gems/google_maps_service/0.4.2 <- Documentacion
# gem 'google_maps_service', '~> 0.4.2' <- no lo estoy usando
#
# https://github.com/apneadiving/Google-Maps-for-Rails
# Hay que correr $ rails g gmaps4rails:copy_js
# Para que funcione
gem 'gmaps4rails'
# Ejemplo de gmaps4rails
# https://binarapps.com/blog/integration-of-googlemaps-in-rails-4 <- este es el que estoy usando
#
# API KEY google Map
# API key: AIzaSyDpbSkYMrPiBfDApjWSH04B1XDlt3k18xg
# Esto no estoy seguro de si es obligatorio para el gmaps4rails
gem 'underscore-rails'
#
# StockOverfow
# Documentos para enviar data desde google map
# https://binarapps.com/blog/integration-of-googlemaps-in-rails-4
# http://stackoverflow.com/questions/22562782/trying-to-use-a-form-to-input-marker-with-javascript-into-gmaps4rails

# Google Places
# https://github.com/qpowell/google_places
gem 'google_places'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'sqlite3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

