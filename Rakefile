require 'rspec/core/rake_task'
require "bundler/gem_tasks"
RSpec::Core::RakeTask.new


task :build_test do
  `rake build ignatius.gemspec`
  `gem install pkg/ignatius-*`
   puts "OK =)"
end


task :default => :spec

