require 'bundler'
Bundler.require

# get the path of the root of the app
APP_ROOT = File.expand_path("..", __dir__)

# require the controller(s)
Dir.glob(File.join(APP_ROOT, 'app', 'controllers', '*.rb')).each { |file| require file }

# require the model(s)
Dir.glob(File.join(APP_ROOT, 'app', 'models', '*.rb')).each { |file| require file }

# require helpers
Dir.glob(File.join(APP_ROOT, 'app', 'helpers', '*.rb')).each { |file| require file }

# require database configurations
require File.join(APP_ROOT, 'config', 'database')

# configure SinatraPractice settings
class TestApp < Sinatra::Base
  set :method_override, true
  set :root, APP_ROOT

  # don't enable logging when running tests
  configure :production, :development do
    enable :logging
  end
end
