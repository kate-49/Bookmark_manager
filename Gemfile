# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra'
gem 'rspec-sinatra'
gem 'pg'
gem 'rake'

gem 'capybara', group: :test
gem 'rspec', group: :test

group :development, :test do
  gem "rubocop", "0.79.0"
end
