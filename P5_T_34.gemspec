# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'P5_T_34/version'

Gem::Specification.new do |spec|
  spec.name          = "P5_T_34"
  spec.version       = P5T34::VERSION
  spec.authors       = ["alu0100611120", "wyllman"]
  spec.email         = ["alu0100611120@ull.edu.es", "wyllman@gmail.com"]
  spec.description   = %q{Framework para la creación y manupulación de examenes}
  spec.summary       = %q{Created in c9.io}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  #PERSONAL: Para poder usar rspec
  spec.add_development_dependency "rspec", "~> 2.1"
  #Para utilizar Guard
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  #coverall
  spec.add_development_dependency "coveralls"
end
