require 'thor'
require 'thor/group'
require 'sinatra/base'
require 'pathname'

Dir[File.dirname(__FILE__) + '/ignatius/**/*.rb'].each {|file| require file }

module Ignatius
  $ROOT = File.dirname(__FILE__)
end
