source 'http://rubygems.org'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # gem 'sass-rails', "  ~> 3.1.0"
  # gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

group :development, :test do
  gem 'mysql2', '0.3.11'
  gem 'thin', '1.3.1'
  gem 'turn', :require => false
  gem  "spud_admin", :path => "../spud_core_admin"
  gem  "spud_cms", :path => "../spud_cms"
end

group :test do
  gem 'rspec', '2.8.0'
  gem 'rspec-rails', '2.8.1'
  gem 'shoulda', :git => 'git://github.com/3den/shoulda.git' # gem 'shoulda', '2.11.3' # gem needs updated for rails 3.2 from pending pull requests.
  gem 'factory_girl', '2.5.0'
  gem 'mocha', '0.10.3'
end


