require 'rubygems'
require 'bundler'
require 'sinatra'

# use bundle to run app
Bundler.require

# load controllers and environment file
$LOAD_PATH.unshift(File.expand_path("app", __dir__))
require File.expand_path('../config/environment', __FILE__)

# map the controllers to routes
#map('/example') { run ExampleController }
map('/') { run TestApp }
map('/users') { run UserController }
