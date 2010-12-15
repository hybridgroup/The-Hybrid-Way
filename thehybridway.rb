require 'rubygems'
require 'bundler'
Bundler.require

class TheHybridWay < Sinatra::Base
  set :root, File.dirname(__FILE__)
  # Do nothing, all files are staticly generated through yardoc
end
