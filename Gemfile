source 'http://rubygems.org'
gem 'rails', "~> 3.2.0"
gem 'rake', "~> 0.9.2.2"
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
  gem  "spud_core", :git => "git://github.com/davydotcom/spud_core_admin.git"
  gem  "spud_cms", :git => "git://github.com/davydotcom/spud_cms.git"
  gem  "spud_events", :git => "git://github.com/davydotcom/spud_events.git"
  gem 'rspec-rails', '2.8.1'
end

group :test do
  gem 'rspec', '2.8.0'
  gem 'shoulda', :git => 'git://github.com/3den/shoulda.git' # gem 'shoulda', '2.11.3' # gem needs updated for rails 3.2 from pending pull requests.
  gem 'factory_girl', '2.5.0'
  gem 'mocha', '0.10.3'
  gem "database_cleaner", "0.7.1"
end


