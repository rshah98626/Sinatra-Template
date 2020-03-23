ENV["RACK_ENV"] ||= "test"

# pull in necessary files
require File.expand_path("../../config/environment", __FILE__)
require 'rspec'
require 'database_cleaner'
require 'rack/test'

DatabaseCleaner.strategy = :truncation

module RSpecMixin
  include Rack::Test::Methods
  def app() TestApp end
end

RSpec.configure do |c|
  c.include RSpecMixin

  c.before(:all) do
    DatabaseCleaner.clean
  end

  c.after(:each) do
    DatabaseCleaner.clean
  end
end
