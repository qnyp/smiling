# -*- encoding: utf-8 -*-
require File.expand_path('../lib/smiling/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Junya Ogura"]
  gem.email         = ["junyaogura@gmail.com"]
  gem.description   = %q{API wrapper for Nico Nico Douga (experimental)}
  gem.summary       = %q{API wrapper for Nico Nico Douga}
  gem.homepage      = "https://github.com/qnyp/smiling"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "smiling"
  gem.require_paths = ["lib"]
  gem.version       = Smiling::VERSION

  gem.add_development_dependency 'rake', '~> 0.9.0'
  gem.add_development_dependency 'rdoc', '~> 3.0'
  gem.add_development_dependency 'rspec', '~> 2.10.0'
  gem.add_development_dependency 'simplecov', '~> 0.6.0'
  gem.add_development_dependency 'webmock', '~> 1.8.0'

  gem.add_dependency 'nokogiri', '~> 1.5.0'
  gem.add_dependency 'httparty', '~> 0.8.0'
  gem.add_dependency('jruby-openssl') if RUBY_PLATFORM == 'java'
end
