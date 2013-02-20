# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'ignatius/version'

Gem::Specification.new do |gem|
  gem.name          = 'ignatius'
  gem.version       = Ignatius::VERSION
  gem.date          = Time.new.strftime('%Y-%m-%d')
  gem.authors       = ['Bruno Henrique - Garu']
  gem.email         = ['squall.bruno@gmail.com']
  gem.description   = %q{Ignatius is a blog engine for hackers who like beautiful things}
  gem.summary       = %q{Is engine hackers bloging}
  gem.homepage      = 'http://github.com/brunohenrique/ignatious'

  gem.add_dependency 'compass', '~> 0.12.2'
  gem.add_dependency 'jekyll', '~> 0.12.0'
  gem.add_dependency 'rack-livereload', '~> 0.3.10'
  gem.add_dependency 'rake', '~> 10.0.3'
  gem.add_dependency 'sinatra', '~> 1.3.4'
  gem.add_dependency 'thor', '~> 0.17.0'

  gem.add_development_dependency 'pry', '~> 0.9.10'
  gem.add_development_dependency 'pry-debugger', '~> 0.2.1'
  gem.add_development_dependency 'rake', '~> 10.0.3'
  gem.add_development_dependency 'rspec', '~> 2.12.0'

  gem.bindir        = 'bin'
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
