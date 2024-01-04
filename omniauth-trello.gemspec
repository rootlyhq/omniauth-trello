# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-trello/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "omniauth-trello"
  gem.version       = Omniauth::Trello::VERSION
  gem.authors       = ["Josh Rowley"]
  gem.email         = ["joshua.f.rowley@gmail.com"]
  gem.description   = %q{OAuth 1.0 Strategy for Trello}
  gem.summary       = %q{An OAuth 1.0 Strategy for Trello that abstracts the OAuth flow using the Omniauth gem}
  gem.homepage      = "https://github.com/joshrowley/omniauth-trello"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-trello"
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3"

  gem.add_dependency 'omniauth', '~> 2.0.0'
  gem.add_dependency 'omniauth-oauth2', '>= 1.4.0', '< 2.0'
  gem.add_dependency 'multi_json', '~> 1.15'
  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
