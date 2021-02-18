source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use Active Model has_secure_password for user authentication
gem 'bcrypt', '~> 3.1.7'

# Use Json Web Token (JWT) for token based user authentication
gem 'jwt', '~> 1.5', '>= 1.5.4'

# Authentication solution for Rails based on JWT
gem 'knock', '~> 1.4', '>= 1.4.2'

# Use FriendlyId to create pretty URLs with strings instead of id numbers.
gem 'friendly_id', '~> 5.4.0'

# Use Carrierwave to upload files
gem 'carrierwave', '~> 2.0'

# Use Cloudinary for managing media assets(images) in the cloud
gem 'cloudinary'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Use Active Model Serializers for serailizing API output
gem 'active_model_serializers'

# Protect our API from DDoS, brute force attacks
gem 'rack-attack'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
