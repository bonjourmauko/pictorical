source 'http://rubygems.org'

gem 'rails', '3.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

# REFINERY CMS ================================================================

java = (RUBY_PLATFORM == 'java')

# Specify the Refinery CMS core:
gem 'refinerycms',              '~> 0.9.8.8'

# Specify additional Refinery CMS Engines here (all optional):
gem 'refinerycms-inquiries',    '~> 0.9'
# gem 'refinerycms-news',       '~> 0.9.9'
# gem 'refinerycms-portfolio',  '~> 0.9.8'
# gem 'refinerycms-theming',    '~> 0.9.8'

# Add i18n support (optional, you can remove this if you really want to).
gem 'refinerycms-i18n',         '~> 0.9'

# END REFINERY CMS ============================================================

# USER DEFINED
gem 'haml-rails'
gem 'compass'
gem 'jquery-rails'
gem 'rails3-generators'
gem 'twitter'
#gem 'koala', :git => 'git://github.com/maukoquiroga/koala.git'
gem 'hassle', :git => 'git://github.com/koppen/hassle.git'
gem 'refinerycms-galleries', '= 0.4', :require => 'galleries', :git => 'git://github.com/Vizzuality/refinerycms-galleries.git'

group :development do
  gem 'heroku_san'
end

# END USER DEFINED

gem 'refinerycms-artists', '1.0', :path => 'vendor/engines', :require => 'artists'
gem 'refinerycms-writers', '1.0', :path => 'vendor/engines', :require => 'writers'
gem 'refinerycms-books', '1.0', :path => 'vendor/engines', :require => 'books'