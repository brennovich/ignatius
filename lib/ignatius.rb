require 'thor'
require 'thor/group'

Dir[File.dirname(__FILE__) + '/ignatius/**/*.rb'].each {|file| require file }

module Ignatius
  # Your code goes here...
end
