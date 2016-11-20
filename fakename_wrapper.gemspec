# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fakename_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "fakename_wrapper"
  spec.version       = FakenameWrapper::VERSION
  spec.authors       = ["Gustavo Sobral"]
  spec.email         = ["ghsobral@gmail.com"]

  spec.summary       = %q{Wrapper for fakenamegenerator website}
  spec.description   = %q{A simple wrapper to generate specific Person data based on fakenamegenerator.com website}
  spec.homepage      = "https://github.com/gustavosobral/fakename_wrapper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'nokogiri'
end
