# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ignatius/version'

Gem::Specification.new do |gem|
  gem.name          = "ignatius"
  gem.version       = Ignatius::VERSION
  gem.authors       = ["Bruno Henrique - Garu"]
  gem.email         = ["squall.bruno@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.add_dependency 'compass' "~> 0.12.2"
  gem.add_dependency 'guard-livereload', "~> 1.1.1"
  gem.add_dependency 'jekyll', "~> 0.11.2"
  gem.add_dependency 'rack-livereload', "~> 0.3.8"
  gem.add_dependency 'rake', "~> 10.0.2"
  gem.add_dependency 'sinatra', "~> 1.3.3"

  gem.add_development_dependency "rspec", "~> 2.12.0"

  gem.bindir        = 'bin'
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end