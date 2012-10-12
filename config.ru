SINATRA_ROOT = File.expand_path(File.dirname(__FILE__))

require 'rubygems'
require 'bundler'

ENV['RAILS_ENV'] = ENV['RACK_ENV']
raise "Unknown environment" unless ENV['RACK_ENV'].length > 0

Bundler.require

class MyApp < Sinatra::Base
  get '/' do
    'Hello World!'
  end

  options '/' do
    'bye world'
  end
end

MyApp.run!
