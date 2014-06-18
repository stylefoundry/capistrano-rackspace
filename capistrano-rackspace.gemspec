# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/rackspace/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-rackspace"
  spec.version       = Capistrano::Rackspace::VERSION
  spec.authors       = ["Robert Lee-Cann"]
  spec.email         = ["robert.lee-cann@stylefoundry.co.uk"]
  spec.summary       = %q{Run deploys against tagged Rackspace servers.}
  spec.description   = %q{Run Capistrano deploys against Rackspace servers that are tagged in a specific way.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
