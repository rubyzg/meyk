# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meyk/version'

Gem::Specification.new do |spec|
  spec.name          = "meyk"
  spec.version       = Meyk::VERSION
  spec.authors       = ["Hrvoje Šimić"]
  spec.email         = ["hrvoje.simic@protonmail.ch"]
  spec.summary       = %q{Micro make tool for Ruby.}
  spec.description   = %q{Micro make tool for Ruby.}
  
  spec.homepage      = "http://github.com/rubyzg/meyk"
  
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.4"
  spec.add_development_dependency "pry", "~> 0.10"
end
