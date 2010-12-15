require 'rubygems'
require 'bundler'
Bundler.require

class TheHybridWay < Sinatra::Base
  set :root, File.dirname(__FILE__)
  
  # All files are staticly generated through yardoc, just gotta redirect to the index

  get '/' do
    redirect '/index.html'
  end
  
end
