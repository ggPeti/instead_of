# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'instead_of'

Gem::Specification.new do |spec|
  spec.name          = "instead_of"
  spec.version       = InsteadOf::VERSION
  spec.authors       = ["Ferenczy Péter"]
  spec.email         = ["ggpeti@gmail.com"]
  spec.description   = "An utterly simple gem to replace specific values with other values."
  spec.summary       = "An utterly simple gem to replace specific values with other values."
  spec.homepage      = "https://github.com/ggPeti/instead_of"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
